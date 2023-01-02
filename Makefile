DOCKER_IMAGE=rubyfpm

include Makefile.docker

.PHONY: check-version
check-version:
	docker run --rm --entrypoint gem $(DOCKER_NAMESPACE)/$(DOCKER_IMAGE):$(VERSION) list| grep fpm| awk '{print $$2}'| tr -d "()"
