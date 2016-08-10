# usage:
# docker run --rm -it silgon/mdp
# docker run --rm -v $(pwd):/mdp -it silgon/mdp filename.md
FROM ubuntu:16.04
MAINTAINER Silgon <silgon3200@gmail.com>

RUN apt-get update
RUN apt-get install mdp
RUN rm -rf /var/lib/apt/lists/*

RUN mkdir /mdp
COPY sample.md /mdp
WORKDIR /mdp

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD  mdp sample.md
