FROM nginxinc/nginx-unprivileged:1.31.7-alpine3.24

# A imagem base sai com pacotes que já têm correção publicada; atualiza antes de copiar o site.
USER root
RUN apk upgrade --no-cache

COPY site/ /usr/share/nginx/html/

USER 101

EXPOSE 8080
