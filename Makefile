#!/usr/make
SHELL := /usr/bin/bash

# TRY TO SUPPORT UBUNTU && CENTOS: probably not the best code but at least easy to understand. CENTOS SHOULD BE REMOVED 
PHP = $(shell if [ -x "$$(command -v php8.3)" ]; then  echo 'php8.3'; elif [ -x "$$(command -v php8.2)" ]; then  echo 'php8.2'; else echo 'php8.3'; fi)

$(info PHP version: ${PHP})

.PHONY:	install

install:
	@echo "launch:"
	@echo "make build -> Build pdo_sqlcipher for your current php version"


build:
	@echo "Build in progress..."
	@./build.sh
	@echo "Done"

clean:
	@echo "Cleaning all..."
	@rm -rf release autom4te.cache package sqlcipher.git build php-*
	@echo "Done"
