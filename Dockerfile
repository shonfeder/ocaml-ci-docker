# This container is aimed at timeliness and cutting edge tooling over stability
FROM ocaml/opam2:latest

MAINTAINER Shon Feder <shon.feder@gmail.com>

# The base opam is configured to use its local repository, so refresh that
RUN cd /home/opam/opam-repository/ && \
  git pull origin

RUN opam update

RUN sudo apt-get update

# System dependencies required by OCaml packages
RUN sudo apt-get install \
  m4 \
  -y

# This container is aimed at a robust foundation over minimal size
RUN opam install \
  dune \
  base \
  core
