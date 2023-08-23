FROM busybox

ENV etcd_version=v3.5.9
ENV download_url=https://github.com/etcd-io/etcd/releases/download

RUN wget -O etcd.tar.gz ${download_url}/${etcd_version}/etcd-${etcd_version}-linux-amd64.tar.gz && \
    tar -xzvf etcd.tar.gz -C /usr/bin --exclude */README* --exclude */Documentation --strip-components 1 && \
    rm -f etcd.tar.gz && \
    chown root:root /usr/bin/etcd*
    