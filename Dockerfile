FROM ubuntu:latest

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y curl gnupg && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

WORKDIR /opt/vuln-node-app

COPY . .

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]
