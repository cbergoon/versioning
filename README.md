# Versioning - A reference template inspired by @campoy

### Build

The implementation uses build tags and ldflags to provide a way to dynamically version a Go project. 

#### Build for Development

```
$ make dev
```
or
```
$ go build -ldflags "-X main.commit=$(git rev-parse HEAD) -X main.version=v0.1.0 -X main.built=$(date '+%d/%m/%YT%H:%M:%S')"
```

#### Build for Production

```
$ make prod
```
or
```
$ go build -tags prod -ldflags "-X main.commit=$(git rev-parse HEAD) -X main.version=v0.1.0 -X main.built=$(date '+%d/%m/%YT%H:%M:%S')"
```

