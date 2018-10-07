HEAD = $(shell git rev-parse HEAD)
dev:
	go build -ldflags "-X main.commit=$(HEAD) -X main.version=v0.1.0"

prod:
	go build -tags prod -ldflags "-X main.commit=$(HEAD) -X main.version=v0.1.0"