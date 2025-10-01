.PHONY: precommit
precommit:
precommit: all

.PHONY: all
all:
all: lint test clean

.PHONY:	lint
lint:
	@echo "lint code..."
	@golangci-lint run -c .golangci.yaml

.PHONY: test
test:
	@echo "Running tests..."
	@go test -v -race -timeout=30s -coverprofile=coverage.out ./...

.PHONY: clean
clean:
	rm -f coverage.*