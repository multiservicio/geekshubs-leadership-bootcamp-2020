FROM nginx:stable

# Copiar el site conf
COPY myapp.conf /etc/nginx/conf.d/default.conf

# Crear carpeta para mi aplicación
RUN mkdir -p /www/data

# Cambiar a ese directorio
WORKDIR /www/data

# Copiar el index como index.html
COPY index.html .
