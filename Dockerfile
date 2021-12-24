FROM alpine

WORKDIR /var/run/photopea

RUN apk update && apk upgrade

RUN apk add git python3

RUN git clone  --progress --verbose https://github.com/DUOLabs333/photopea.git .

EXPOSE 8887

ENTRYPOINT ["python3", "-m", "http.server", "--directory", "www.photopea.com", "8887"]
