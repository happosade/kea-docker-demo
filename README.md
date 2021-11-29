# kea-docker-demo

This repository aims to show how Kea can be set up running in contarized
environment (Like ECS/EKS) in a way that it can expose API for setting up
subnet allocations and multiple containers can sit behind load balancer in
a way that any incoming requests can be directed towards 

## Usage

Just running `docker-compose up --build` should be enough to bring everything
up, including container building and pulling.
