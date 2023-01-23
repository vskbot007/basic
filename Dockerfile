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
FROM node:18.13.0
LABEL maintainer saikumar <saikumarvutukuru123@gmail.com>
ENV NODE_ENV=production

VOLUME /git
WORKDIR /git

ENTRYPOINT ["git"]
CMD ["--help"]
