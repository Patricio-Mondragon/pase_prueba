FROM sso-stg/imagen-ubi9-yq:latest

# Copiar los plugins al directorio /plugins dentro de la imagen
COPY plugins/* /plugins/
