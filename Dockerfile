FROM node:20.15-alpine
ENV NODE_ENV production

RUN apk update
RUN apk add --no-cache bash
RUN mkdir /home/node/app
RUN mkdir /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY --chown=node:node . .
RUN npm install

USER node
EXPOSE 3000
CMD [ "bash" , "/home/node/app/start.sh" ]