
FROM node:8-alpine
#WORKDIR /usr/src/app
RUN touch /package.json && chmod -R 777 /package.json
#RUN npm i
#COPY . .
#RUN mkdir /.npm && chmod -R 777 /.npm

RUN mkdir /.npm && chmod -R 777 /.npm


RUN apk update && apk add curl && apk add git 
EXPOSE 3000


#CMD ['node','App.js']
