FROM node:14.5.0-alpine As builder

WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

RUN npm install

COPY . .

RUN npm run build --prod

FROM nginx:1.15.8-alpine

RUN apk update
RUN apk add openssl

RUN mkdir -p /etc/nginx/ssl/
COPY nginx.conf /etc/nginx/nginx.conf
RUN openssl req -new -newkey rsa:2048 -days 365 -sha256 -nodes -x509 -subj "/C=US/ST=WA/L=Seattle/O=JFrog/CN=dev.jfrog.com" -addext "subjectAltName = DNS:dev.jfrog.com" -addext "extendedKeyUsage = serverAuth" -keyout /etc/nginx/ssl/nginx.key  -out /etc/nginx/ssl/nginx.cert

COPY --from=builder /usr/src/app/dist/workshop-app/ /usr/share/nginx/html
