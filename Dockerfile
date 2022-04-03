FROM alpine:3.15

ARG repo

RUN apk add --no-cache \
            python3 \
            py3-pip \
            git \
            && rm -rf /var/lib/apt/lists/*

RUN git clone ${repo} docs \
    && cd /docs \
    && pip install -r requirements.txt \
    && mkdir site \
    && mkdocs build \
    && echo "0 */2 * * * git -C /docs pull && cd /docs && pip install -r requirements.txt && mkdocs build" | crontab -


ENTRYPOINT ["crond", "-f"]
