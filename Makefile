#!/usr/make
SHELL := /usr/bin/bash

# TRY TO SUPPORT UBUNTU && CENTOS: probably not the best code but at least easy to understand. CENTOS SHOULD BE REMOVED 
PHP_CONFIG=$(shell which php-config)
$(info PHP_CONFIG: ${PHP_CONFIG})

PHP_VER=$(shell ${PHP_CONFIG} --version)

$(info PHP version: ${PHP_VER})

.PHONY:	build

build:
	@echo "Build in progress..."
	@./build.sh
	@echo "Done"

clean:
	@echo "Cleaning all..."
	@rm -rf release autom4te.cache package sqlcipher.git build php-*
	@echo "Done"
