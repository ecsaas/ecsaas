#!/bin/bash
# shellcheck disable=SC2164
cd "$(dirname "$0")"
go install github.com/segmentio/golines@latest
"$GOPATH"/bin/golines -w .
npx prettier --write .
