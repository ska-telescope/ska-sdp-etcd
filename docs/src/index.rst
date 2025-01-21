SDP etcd Image
==============

Etcd is the highly available key-value database underpinning the SDP
configuration library. In order to deploy the SDP we need a lightweight OCI
image containing the etcd binaries and basic commands like sleep.

This repository contains a Dockerfile to build an image based on BusyBox with
the etcd binaries installed on top.
