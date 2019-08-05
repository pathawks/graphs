svgs := $(patsubst %.gv,%.svg,$(wildcard *.gv))

default: $(svgs)

%.svg: %.gv
	dot -Gbgcolor="transparent" -Nfontname="Source Code Pro,Ubuntu Mono,DejaVu Sans Mono,monospace" -Tsvg "$<" | svgo -i - --multipass --disable=removeDoctype --disable=removeDimensions --enable=sortAttrs --enable=removeDimensions | svgcleaner -c - > "$@"

clean:
	rm -f *.svg

homebrew:
	brew install svgo graphviz --with-librsvg
