### Makefile
#
## Description
#
# Makefile to build/test the range module.
#
## LICENSE
#
# SPDX-License-Identifier: BSD-3-Clause

GUILE_SITE_DIR ?= .
TGT = $(GUILE_SITE_DIR)/ngo/range.go

all: build

build: $(TGT)

$(TGT): range.scm
	guild compile $< -o $@

$(GUILE_SITE_DIR)/ngo/%.go: %.scm

%.scm: %.org
	emacs --batch --eval "(require 'org)" --eval '(org-babel-tangle-file "$^")'

.PHONY: tests
test: all
	guile --fresh-auto-compile test-range.scm

.PHONY: clean
clean:
	rm -f $(TGT)
