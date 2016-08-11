# usage:
# docker run --rm -p 9000:9000 goshop
FROM golang:1.5

ENV PORT 9000
ENV GOPATH /go

RUN go get github.com/rofrol/goshop

RUN apt-get update && apt-get install -y \
	unzip \
    sqlite3 \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

RUN cd $GOPATH/src/github.com/rofrol/goshop && \
    wget http://foundation.zurb.com/cdn/releases/foundation-5.0.3.zip && \
    unzip foundation-5.0.3.zip -d static/foundation &&\
    rm foundation-5.0.3.zip && \
    mkdir tls && cd tls &&\
    openssl req -nodes -x509 -newkey rsa:2048 -keyout key.pem -out cert.pem -subj "/C=NL/ST=Zuid Holland/L=Rotterdam/O=Sparkling Network/OU=IT Department/CN=ssl.raymii.org" &&\
    cd $GOPATH/src/github.com/rofrol/goshop \
    sh db/init.sh &&\
    go get .

EXPOSE $PORT

CMD cd $GOPATH/src/github.com/rofrol/goshop && goshop
