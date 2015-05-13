PHP ?= $(shell which php)
COMPOSER = $(shell which composer)

.PHONY : update-composer install-composer-deps

update-composer:
	@echo "Composer self-update"
		-$(COMPOSER) selfupdate

install-composer-deps: update-composer
	@echo "Installing composer deps"
		-$(COMPOSER) install --prefer-dist