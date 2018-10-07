# Versioning - A reference template inspired by @campoy

This is an opinionated example of versioning. 

### Build

The implementation uses build tags and ldflags to provide a way to dynamically version a Go project. 

#### Build for Development

```
$ make dev
```
or
```
$ HEAD = $(shell git rev-parse HEAD) BUILT = $(shell date '+%d/%m/%YT%H:%M:%S') go build -ldflags "-X main.commit=$(HEAD) -X main.version=v0.1.0 -X main.built=$(BUILT)"
```

#### Build for Production

```
$ make prod
```
or
```
$ HEAD = $(shell git rev-parse HEAD) BUILT = $(shell date '+%d/%m/%YT%H:%M:%S') go build -tags prod -ldflags "-X main.commit=$(HEAD) -X main.version=v0.1.0 -X main.built=$(BUILT)"
```

