# ビルドコマンド
build:
	@go build -o tideman

# 実行コマンド
run:
	@if [ -f ./tideman ]; then \
		./tideman; \
	else \
		go run main.go; \
	fi

# 事前テストコマンド（静的解析、フォーマット）
pretest:
	@gofmt -w ./... && staticcheck ./... && go vet ./... && goimports -w ./...

# テストコマンド
test:
	@go test ./...