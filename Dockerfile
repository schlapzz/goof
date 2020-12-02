FROM node:6-stretch

RUN mkdir /usr/src/goof
RUN mkdir /tmp/extracted_files
COPY . /usr/src/goof
WORKDIR /usr/src/goof

RUN npm update --no-audit
RUN npm install --no-audit
EXPOSE 3001
EXPOSE 9229
ENTRYPOINT ["npm", "start"]
