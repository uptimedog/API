mix          ?= mix


help: Makefile
	@echo
	@echo " Choose a command run in Walrus:"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo


## fmt: Format code
.PHONY: fmt
fmt:
	@echo ">> ============= Format code ============= <<"
	$(mix) format mix.exs "lib/**/*.{ex,exs}" "test/**/*.{ex,exs}"


## deps: Fetch dependencies
.PHONY: deps
deps:
	@echo ">> ============= Fetch dependencies ============= <<"
	$(mix) deps.get


## test: Test code
.PHONY: test
test:
	@echo ">> ============= Test Code ============= <<"
	$(mix) test
