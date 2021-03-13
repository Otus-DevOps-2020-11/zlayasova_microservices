FROM golang:1.14.15 as build-mongodb-exporter

WORKDIR /go/src/github.com/percona/mongodb_exporter

RUN wget https://github.com/percona/mongodb_exporter/archive/v0.20.2.tar.gz \
    && tar -xvzf v0.20.2.tar.gz \
    && cp -a mongodb_exporter-0.20.2/. .

RUN make build


FROM ubuntu:18.04

COPY --from=build-mongodb-exporter /go/src/github.com/percona/mongodb_exporter/mongodb_exporter /bin/mongodb_exporter

EXPOSE 9216

ENTRYPOINT ["/bin/mongodb_exporter"]
