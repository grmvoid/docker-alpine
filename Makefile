REPO = ghcr.io/nulldark/alpine
ALPINE_VERSION?=edge
TARGET_PLATFORM?=linux/amd64

ifeq ($(TAG),)
	TAG ?= $(ALPINE_VERSION)
endif

pre-buildx-build:
	docker buildx build --load \
		--platform linux/amd64 \
		--tag $(REPO):$(ALPINE_VERSION) \
		--file $(ALPINE_VERSION)/Dockerfile $(ALPINE_VERSION)/
buildx-build:
	docker buildx build --platform $(TARGET_PLATFORM) \
		--tag $(REPO):$(ALPINE_VERSION) \
		--file $(ALPINE_VERSION)/Dockerfile $(ALPINE_VERSION)/
buildx-push:
	docker buildx build --platform=$(TARGET_PLATFORM) --push \
		--tag $(REPO):$(TAG) \
		--file $(ALPINE_VERSION)/Dockerfile $(ALPINE_VERSION)/