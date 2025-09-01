FROM n8nio/n8n:latest
USER root
RUN apk add --no-cache tzdata curl jq
USER node
ENV N8N_PORT=5678
CMD ["sh","-lc","export N8N_PORT=${PORT:-5678}; n8n start"]
