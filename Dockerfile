FROM ubuntu:focal

ARG repo=https://github.com/VaagenIM/docs.iktim.no

RUN apt update && apt install -y \
            cron \
            python3 \
            python3-pip \
            git \
            && rm -rf /var/lib/apt/lists/*

RUN git clone ${repo} docs \
    && cd /docs \
    && pip install -r requirements.txt \
    && mkdir site \
    && mkdocs build \
    && echo "0 */2 * * * git -C /docs pull && cd /docs && pip install -r requirements.txt && mkdocs build" | crontab -

ENTRYPOINT ["cron", "-f"]
