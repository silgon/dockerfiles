# docker run --rm -p 9000:9000 silgon/strut
FROM node:6.3-slim

RUN wget https://github.com/tantaman/Strut/archive/master.tar.gz -O ./Strut.tar.gz \
 && tar zxvf ./Strut.tar.gz \
 && mv Strut-master strut \
 && rm ./Strut.tar.gz

WORKDIR /strut
COPY package.json package.json

RUN npm install -g grunt-cli \
    && npm install

EXPOSE 9000
CMD ["grunt", "server"]
