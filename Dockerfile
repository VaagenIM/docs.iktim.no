FROM alpine:3.15

ARG REPO_URL=https://github.com/VaagenIM/docs.iktim.no

RUN apk add --no-cache \
            python3 \
            py3-pip \
            git \
            thttpd \
            && rm -rf /var/lib/apt/lists/*

RUN git clone ${REPO_URL} docs \
    && cd /docs \
    && pip install -r requirements.txt \
    && mkdir site \
    && mkdocs build \
    && echo "0 */2 * * * git -C /docs pull && cd /docs && mkdocs build" | crontab - \
    && touch /.entrypoint.sh \
    && echo "thttpd -h "0.0.0.0" -d "/docs/site" -M 60" >> /.entrypoint.sh \
    && echo "crond -f" >> /.entrypoint.sh

WORKDIR /docs
EXPOSE 80

ENTRYPOINT ["sh", "/.entrypoint.sh"]
