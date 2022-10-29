DRAWIO_FILES := $(patsubst %.yml,%.all.drawio,$(wildcard *.yml))

%.all.drawio: %.yml
	@cfn-dia draw.io -t $< -o $@ -c

.PHONY: all
all: $(DRAWIO_FILES)
