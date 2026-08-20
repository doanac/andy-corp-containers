FROM alpine:latest as base

RUN wget -O /tmp/dg-sat https://github.com/foundriesio/update-server/releases/download/v0.9.4/fioserver-linux-amd64

FROM gcr.io/distroless/base-nossl-debian13
COPY --from=base --chmod=0755 /tmp/dg-sat /dg-sat

ENTRYPOINT ["/dg-sat"]
