SKA SDP ETCD
============

Etcd is the highly available key-value database underpinning the configuration library. In order to deploy the sdp we
need a lightweight image with basic commands like `sleep` but also etcd commands like `etcdctl`.

This repository contains the dockerfile to build a busybox image with specific binaries for etcd commands installed on top.

