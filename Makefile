DST=$(HOME)/.local/bin
BIN=node npm npx
ALL=$(addprefix $(DST)/, $(BIN))

.PHONY: default
default:
	@echo "run 'make install' to install into $(TARGET)"

$(DST)/%: bin/%
	cp -P $< $@

.PHONY: install
install: $(ALL)

.PHONY: uninstall
uninstall:
	rm -f $(ALL)
