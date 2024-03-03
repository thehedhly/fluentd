# fluentd

![Build](https://github.com/thehedhly/fluentd/actions/workflows/ci.yml/badge.svg?branch=main)
![Docker build](https://github.com/thehedhly/fluentd/actions/workflows/linter.yml/badge.svg?branch=main)

<img src="README-Resources/fluentd.png" width="100" height="100" alt="Fluentd Logo" />

## Features
- Builds [fluentd](https://docs.fluentd.org/) docker __image__ with plugin installation support.

## Fluentd:
The official [fluentd docker image](https://github.com/fluent/fluentd-docker-image/tree/master) is slightly extended with custom plugin installation.</br> 
The plugins are installed from a provided [Gemfile](https://bundler.io/guides/gemfile.html).


## Build arguments
| Name | description | default |
|------|---------|---------|
| `FLUENTD_IMAGE_VERSION` | Fluentd base image | v1.16.2-1.1 |


## Usage
### Build
```
docker build -t fluentd .
```
```
docker build --build-arg FLUENTD_IMAGE_VERSION=1.16.2-debian-1.1 -t fluentd:<tag> .
```
#### Run
```
docker run --rm -it -p 24224:24224 fluentd bash
```
```
docker run --rm -it -p 24224:24224 fluentd:<tag> bash
```
```
docker run --rm -it -p 24224:24224 --name fluentd --mount type=bind,source=/path/to/fluentd.conf,target=/fluentd/etc/fluentd.conf -e FLUENTD_CONF=fluentd.conf fluentd:<tag>
```

Sources: Cloud Native Computing Foundation (CNCF), https://docs.fluentd.org/quickstart/logo </br>
This project was created by [H.Hedhly](https://hedhly.com).
