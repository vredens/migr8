.PHONY: dist config build

all: clean config vet test build

clean:
	rm -rf vendor
	rm -rf dist
	rm -f migr8

config:
	dep ensure

build: config
	go build -o migr8

test:
	go test ./...

vet:
	go vet *.go

dist:
	mkdir -p dist

linux:	dist
	GOOS=linux go build -o ./dist/migr8-linux

darwin:	dist
	GOOS=darwin go build -o ./dist/migr8-darwin
