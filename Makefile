DST=$(HOME)/.local/bin
BIN=$(notdir $(wildcard bin/*))
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
