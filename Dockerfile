FROM certbot/certbot

RUN pip3 install --no-cache-dir --upgrade pip && \
    pip3 install --no-cache-dir certbot-plugin-gandi

WORKDIR /certbot
