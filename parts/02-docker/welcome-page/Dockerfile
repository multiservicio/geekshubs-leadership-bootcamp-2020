FROM nginx:alpine-slim

# Copiar el site conf
COPY acme-site.conf /etc/nginx/conf.d/default.conf

# Crear carpeta para mi aplicación
RUN mkdir -p /www/data

# Cambiar a ese directorio
WORKDIR /www/data

# Copiar el index como index.html
COPY index.html .
