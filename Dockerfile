FROM node:dubnium-alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app


#Remove old node modules and reinstall
COPY . /usr/src/app
RUN rm -rf node_modules
RUN rm -rf package-lock.json
RUN npm install
RUN npm audit fix --force

EXPOSE 3000
CMD [ "npm", "start" ]