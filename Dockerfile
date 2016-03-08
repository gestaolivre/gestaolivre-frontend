FROM node:5
MAINTAINER contato@gestaolivre.org
EXPOSE 4200
EXPOSE 49152
RUN mkdir /code
WORKDIR /code
RUN npm install -g angular-cli
ADD ./package.json /code/
RUN npm install
ADD . /code/
CMD [ "npm", "start" ]
