migr8
---

Redis Migration Utility written in Go

## Quick start

Installing

```
go get github.com/vredens/migr8
```

## Usage
```
NAME:
   migr8 - It's time to move some redis

USAGE:
   migr8 [global options] command [command options] [arguments...]

VERSION:
   0.0.0

COMMANDS:
   migrate	Migrate one redis to a new redis
   delete	Delete all keys with the given prefix
   help, h	Shows a list of commands or help for one command

GLOBAL OPTIONS:
   --dry-run, --dr                Run in dry-run mode
   --source, -s "127.0.0.1:6379"  The redis server to pull data from
   --source-db "0"                The redis source database, defaults to 0
   --dest, -d "127.0.0.1:6379"    The redis server to write data to
   --dest-db "0"                  The redis destination database, defaults to 0
   --workers, -w "2"              The count of workers to spin up
   --batch, -b "10"               The batch size
   --prefix, -p                   The key prefix to act on
   --clear-dest, -c               Clear the destination of all it's keys and values
   --help, -h                     Show help
   --version, -v                  Print the version
```

## Requirements (Dev)

migr8 uses [dep](https://github.com/golang/dep) to vendor dependencies.

To install it run, `go get github.com/golang/dep/cmd/dep`

Tests require that `redis-server` is somewhere in your $PATH.

## Run tests

```sh
make test
```

## Build

```sh
make
```

#### Cross Compile for Linux:

*Note:* You will need the Go cross compile tools. If you're using homebrew: `brew install go --cross-compile-common`

`make linux` will build a linux binary in `./dist/`

`make dawin` will build a darwin binary in `./dist/`
