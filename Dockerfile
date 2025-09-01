FROM n8nio/n8n:latest
USER root
RUN apk add --no-cache tzdata curl jq
USER node
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false
EXPOSE 5678
CMD ["n8n","start"]
