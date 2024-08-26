## Build Stage ##
FROM alpine:latest AS builder

RUN apk add --no-cache git cargo

RUN git clone https://github.com/patrickramp/actix-webserver

WORKDIR /actix-webserver/

RUN cargo build --release

## Run Stage ##
FROM alpine:latest

RUN apk upgrade --no-cache \
    && apk add --no-cache libgcc

COPY --from=builder /actix-webserver/target/release/actix-webserver /usr/local/bin/webserver

RUN adduser -H -S -s /sbin/nologin actix \
    && addgroup -S actix \
    && chown -R actix:actix /usr/local/bin/webserver

USER actix

ENTRYPOINT [ "/usr/local/bin/webserver" ]

