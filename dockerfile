# Usa una imagen base liviana basada en Linux Alpine con Nginx preinstalado
FROM nginx:alpine

# Copia todos los archivos de tu directorio actual en WSL 
# a la carpeta predeterminada de Nginx para servir páginas web
COPY . /usr/share/nginx/html

# Documenta que el contenedor escuchará en el puerto 95 dentro de la red interna de Docker
EXPOSE 95

# Inicia Nginx en primer plano (daemon off) para que el contenedor no se apague inmediatamente
CMD ["nginx", "-g", "daemon off;"]