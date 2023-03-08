FROM node:14

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app 

EXPOSE 3000

VOLUME [ "/app/node_modules" ]

CMD ["npm", "start"]

#  docker build -t groupo-back .
#  docker run --rm -p 3010:3000 --env-file ./.env -v node_modules:/app/nodemodule -v $(pwd):/app groupo-back
