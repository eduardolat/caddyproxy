FROM caddy:2.7.6-alpine
WORKDIR /app

RUN apk add --no-cache bash
RUN apk add --no-cache gettext

COPY Caddyfile ./Caddyfile
COPY start-caddy.sh ./start-caddy.sh

RUN chmod +x ./start-caddy.sh
CMD ["bash", "./start-caddy.sh"]
