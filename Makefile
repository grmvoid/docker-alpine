ALPINE_VERSION ?= 3.18.5

REPO = ghcr.io/nulldark/alpine
TARGET_PLATFORM ?= linux/amd64

ifneq ($(STABILITY_TAG),)
    ifneq ($(TAG),latest)
        override TAG := $(TAG)-$(STABILITY_TAG)
    endif
endif

ifeq ($(TAG),)
	TAG ?= $(ALPINE_VERSION)
endif

.PHONY: build buildx-build buildx-push push release 

default: build

build:
	docker build -t $(REPO):$(TAG) \
		--build-arg ALPINE_VERSION=$(ALPINE_VERSION) ./

buildx-build:
	docker buildx build --platform $(TARGET_PLATFORM) -t $(REPO):$(TAG) \
		--build-arg ALPINE_VERSION=$(ALPINE_VERSION) ./

buildx-push:
	docker buildx build --platform $(TARGET_PLATFORM) --push -t $(REPO):$(TAG) \
		--build-arg ALPINE_VERSION=$(ALPINE_VERSION) ./
		
push:
	docker push $(REPO):$(TAG)

release: build push