FROM busybox:1.38

ARG DOWNLOAD_URL=https://github.com/etcd-io/etcd/releases/download
ARG ETCD_VERSION=3.5.31
ARG TARGETARCH

RUN wget -O etcd.tar.gz ${DOWNLOAD_URL}/v${ETCD_VERSION}/etcd-v${ETCD_VERSION}-linux-${TARGETARCH}.tar.gz && \
    tar -xzvf etcd.tar.gz -C /usr/bin --exclude */README* --exclude */Documentation --strip-components 1 && \
    rm -f etcd.tar.gz && \
    chown root:root /usr/bin/etcd*

EXPOSE 2379 2380
