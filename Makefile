### Makefile
#
## Description
#
# Makefile to build/test the ngolib library.
#
## LICENSE
#
# SPDX-License-Identifier: BSD-3-Clause

LIBLANG ?= scheme
CMD ?= all

all: $(LIBLANG)
	$(foreach lang,$^,$(MAKE) -C $(lang) $(CMD))

.PHONY: clean
clean:
	$(MAKE) CMD=clean

test:
	$(MAKE) CMD=test

