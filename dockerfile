# Indicar que imagen se quiere utilizar
FROM node:23.1-slim

#directorio de trabajo de la aplicacion 
WORKDIR /app

#dentro de la imagen se va a copiar los pckg a app 
COPY package*.json  ./


# luego instalar todo los modulos, eliminar el cache
RUN npm install \
    && npm cache clean --force \
    && rm -rf /tmp/* /root/.npm/_cacache
COPY . .

#indicar el puerto que va a usar 
EXPOSE 5000

#LAS IMAGENENES NO SE PUEDEN 

#ejecutar el finchero de la aplicacion
CMD ["npm", "start"]
