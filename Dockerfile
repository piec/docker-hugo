FROM alpine
# or FROM scratch?
MAINTAINER Pierre Carru <pierre@carru.fr>

ARG VERSION=0.75.1

RUN apk add curl && \
    curl -L "https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_Linux-64bit.tar.gz" -o - \
    | tar -xvz -f - -C /bin hugo
 
