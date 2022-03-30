FROM alpine:3.15

ARG REPO_URL

RUN apk update
RUN apk add python3 \
            py3-pip \
            git \
            thttpd

RUN git clone ${REPO_URL} docs \
    && cd /docs \
    && pip install -r requirements.txt \
    && mkdir site \
    && mkdocs build

RUN echo "0 */2 * * * git -C /docs pull && cd /docs && mkdocs build" | crontab -

RUN touch /.entrypoint.sh \
    && echo "thttpd -h "0.0.0.0" -d "/docs/site" -M 60" >> /.entrypoint.sh \
    && echo "crond -f" >> /.entrypoint.sh

WORKDIR /docs
EXPOSE 80

CMD ["sh", "/.entrypoint.sh"]
