FROM python:3.11-alpine

WORKDIR /data

RUN set -xe \
 && apk add --update --no-cache --virtual .build-deps gcc musl-dev \
 && apk add --update --no-cache ffmpeg \
 && pip install --upgrade pip \
 && pip install pycrypto yt-dlp \
 && rm -rf ~/.cache/pip \
 && adduser -D yt-dlp \
 && chown yt-dlp:yt-dlp /data

COPY ./yt-dlp.conf /etc/yt-dlp.conf
COPY ./entrypoint.sh /

USER yt-dlp

ENTRYPOINT ["/entrypoint.sh"]
