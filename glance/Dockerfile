FROM alpine:3.22

RUN \
	cd /usr/local/bin && \
	wget -O- https://github.com/glanceapp/glance/releases/download/v0.8.5/glance-linux-amd64.tar.gz | tar -xz


COPY glance.yml /
CMD ["--config", "/glance.yml"]
ENTRYPOINT ["/usr/local/bin/glance"]
