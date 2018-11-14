svgs := $(patsubst %.gv,%.svg,$(wildcard *.gv))

default: $(svgs)

%.svg: %.gv
	dot -Gbgcolor="transparent" -Nfontname="Source Code Pro,Ubuntu Mono" -Tsvg "$<" | svgo -i - --multipass --disable=removeDoctype --disable=removeDimensions --enable=sortAttrs --enable=removeDimensions | svgcleaner -c - > "$@"

clean:
	rm -f *.svg

homebrew:
	brew install svgcleaner svgo graphviz --with-librsvg
