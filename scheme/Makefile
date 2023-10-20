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

tangle:
	emacs --batch --eval "(require 'org)" --eval '(org-babel-tangle-file "range.org")'

$(TGT): range.scm
	guild compile $< -o $@

%.scm: range.org
	$(MAKE) tangle

.PHONY: tests
test: all
	guile --fresh-auto-compile test-range.scm

.PHONY: clean
clean:
	rm -f $(TGT)
