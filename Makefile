svgs := $(patsubst %.gv,%.svg,$(wildcard *.gv))

default: $(svgs)

%.svg: %.gv
	dot -Tsvg "$<" | svgo -i - --multipass --disable=removeDoctype --disable=removeDimensions --enable=sortAttrs --enable=removeDimensions > "$@"

clean:
	rm -f *.svg
