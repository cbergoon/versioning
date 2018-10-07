HEAD = $(shell git rev-parse HEAD)
BUILT = $(shell date '+%d/%m/%YT%H:%M:%S')
dev:
	go build -ldflags "-X main.commit=$(HEAD) -X main.version=v0.1.0 -X main.built=$(BUILT)"

prod:
	go build -tags prod -ldflags "-X main.commit=$(HEAD) -X main.version=v0.1.0 -X main.built=$(BUILT)"