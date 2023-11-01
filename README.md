# SDP etcd OCI image

Etcd is the highly available key-value database underpinning the configuration
library. In order to deploy the SDP we need a lightweight OCI image containing
the etcd binaries and basic commands like `sleep`.

This repository contains a Dockerfile to build an image based on busybox with
the etcd binaries installed on top.


## Standard CI machinery

This repository is set up to use the
[Makefiles](https://gitlab.com/ska-telescope/sdi/ska-cicd-makefile) and [CI
jobs](https://gitlab.com/ska-telescope/templates-repository) maintained by the
System Team. For any questions, please look at the documentation in those
repositories or ask for support on Slack in the #team-system-support channel.

To keep the Makefiles up to date in this repository, follow the instructions
at: https://gitlab.com/ska-telescope/sdi/ska-cicd-makefile#keeping-up-to-date


## Creating a new release

When you are ready to make a new release:

  - Check out the main branch
  - Update the version number in `.release` with
    - `make bump-patch-release`,
    - `make bump-minor-release`, or
    - `make bump-major-release`
  - Create the git tag with `make git-create-tag`
  - Push the changes with `make git-push-tag`
