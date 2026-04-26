FROM httpd:2.4

# Cambiamos la configuración de Apache de 80 a 8080
RUN sed -i 's/Listen 80/Listen 8080/' /usr/local/apache2/conf/httpd.conf

# Copiamos tus archivos
COPY . /usr/local/apache2/htdocs/

# Documentamos que el contenedor usa el 8080
EXPOSE 8080
