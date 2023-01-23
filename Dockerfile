FROM alpine

LABEL maintainer saikumar <saikumarvutukuru123@gmail.com>

RUN apk --update add git less openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

VOLUME /git
WORKDIR /git

ENTRYPOINT ["git"]
CMD ["--help"]

#nodejs
RUN apt-get install -y git-core curl build-essential openssl libssl-dev \
 && git clone https://github.com/nodejs/node.git \
 && cd node \
 && ./configure \
 && make \
 && sudo make install
