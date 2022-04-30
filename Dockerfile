FROM ubuntu:focal

ARG repo=https://github.com/VaagenIM/docs.iktim.no
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
            cron \
            pandoc \
            pandoc-citeproc \
            python3 \
            python3-pip \
            git \
            && rm -rf /var/lib/apt/lists/*

RUN touch cronjob.sh \
    && echo "cd /docs" >> cronjob.sh \
    && echo "git pull" >> cronjob.sh \
    && echo "python3 -m pip install -r requirements.txt" >> cronjob.sh \
    && echo "python3 -m mkdocs build" >> cronjob.sh \
    && git clone ${repo} docs \
    && cd /docs \
    && pip install -r requirements.txt \
    && mkdir site \
    && mkdocs build \
    && echo "0 */2 * * * sh /cronjob.sh" | crontab - \
    && service cron start

ENTRYPOINT ["cron", "-f"]
