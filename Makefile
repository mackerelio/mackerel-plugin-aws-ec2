export GO111MODULE=on

.PHONY: setup
setup:
	GO111MODULE=off \
	go get \
		github.com/laher/goxc \
		github.com/tcnksm/ghr \
		golang.org/x/lint/golint

.PHONY: test
test: setup
	go test -v ./...

.PHONY: lint
lint: setup
	go vet ./...
	golint -set_exit_status ./...
