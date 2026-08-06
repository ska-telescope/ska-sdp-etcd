FROM artefact.skao.int/ska-build-python:1.0.0 AS build

ARG DOWNLOAD_URL=https://github.com/etcd-io/etcd/releases/download
ARG ETCD_VERSION=3.5.21
ARG TARGETARCH

WORKDIR /build

RUN curl -L ${DOWNLOAD_URL}/v${ETCD_VERSION}/etcd-v${ETCD_VERSION}-linux-${TARGETARCH}.tar.gz | tar -zxvf - --strip-components 1

FROM busybox:1.38

COPY --from=build /build/etcd* /usr/bin/

EXPOSE 2379 2380
