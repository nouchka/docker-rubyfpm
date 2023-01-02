FROM ruby:3.1-slim

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -yq --no-install-recommends install make=* binutils=* curl=* git=* && \
	gem install fpm && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
