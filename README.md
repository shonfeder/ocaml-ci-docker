A Docker container for CI with OCaml

The container defined in the [`./Dockerfile`](./Dockerfile) is currently
optimized for my workflow and CI needs.

It provides the following:

- container based on the latest image from ocaml/opam2
- an up to date opam repository
- an opam switch that includes the following, along with all their dependencies
  - dune
  - base
  - core
