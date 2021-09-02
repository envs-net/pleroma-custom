DEST_DIR ?= /var/lib/pleroma/static
DEST_OWNER ?= pleroma
DEST_GROUP ?= pleroma

STATIC_FILES != find . -path "./static/*" -type f
DEST_FILES := $(subst ./static/,$(DEST_DIR),$(BANFILES))

install:
	$(info updating from git remote)
	@git fetch
	@git reset --hard origin/master
	$(info installing new banfiles)
	@install -o $(DEST_OWNER) -g $(DEST_GROUP) -m 644 $(STATIC_FILES) $(DEST_DIR)

uninstall:
	$(info uninstall banfiles)
	@rm -v $(DEST_FILES)

.PHONY: install uninstall
