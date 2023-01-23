
#create a directory for the app and its node_modules with node as its owner
#install all packages in package.json
#expose port 8080 and run the app
#the docker lecture will help you complete this file 
#there should be a total of 9 lines


FROM node:10-alpine

RUN mkdir -p /Users/jongong/School/Senior_Year/CMSC388T/app/ && chown -R node /Users/jongong/School/Senior_Year/CMSC388T/app/

COPY ./index.html /Users/jongong/School/Senior_Year/CMSC388T/app/

WORKDIR /Users/jongong/School/Senior_Year/CMSC388T/app/

COPY package.json ./

RUN npm install

USER node

EXPOSE 8080

CMD ["node", "app.js"]
