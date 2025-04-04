FROM busybox:stable

ENV ETCD_VERSION=3.6.2
ENV DOWNLOAD_URL=https://github.com/etcd-io/etcd/releases/download

RUN wget -O etcd.tar.gz ${DOWNLOAD_URL}/v${ETCD_VERSION}/etcd-v${ETCD_VERSION}-linux-amd64.tar.gz && \
    tar -xzvf etcd.tar.gz -C /usr/bin --exclude */README* --exclude */Documentation --strip-components 1 && \
    rm -f etcd.tar.gz && \
    chown root:root /usr/bin/etcd*

EXPOSE 2379 2380
