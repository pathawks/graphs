Some graphs that I have created for Wikipedia

These can be rendered to SVG by using the command:

```bash
dot -Tsvg FILENAME.gv | svgo -i - --multipass --disable=removeDoctype --disable=removeDimensions --enable=sortAttrs --enable=removeDimensions
```
