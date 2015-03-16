all: test
install:
	@npm install
publish: build
	@npm publish
test: install
	@node --harmony \
		node_modules/.bin/istanbul cover ./node_modules/.bin/_mocha \
		-- \
		--timeout 10000 \
		--require co-mocha
jshint:
	@./node_modules/jshint/bin/jshint .
.PHONY: test
