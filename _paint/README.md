Generators for the pre-rendered watercolour images in `assets/images/paper/`.
Jekyll skips this folder because its name starts with an underscore.

Render a page with headless Chrome on a transparent background, then convert to WebP:

```
CH="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

# washes (1000x1000, then resized to 700)
"$CH" --headless=new --hide-scrollbars --default-background-color=00000000 --window-size=1000,1000 \
  --screenshot=wash-coral.png "file://$PWD/wash.html?kind=wash&color=%23f2b8a4&seed=3"
magick wash-coral.png -resize 700x700 wash-coral.png
cwebp -q 80 -alpha_q 70 wash-coral.png -o ../assets/images/paper/wash-coral.webp
# lavender: color=%23c8b6d8&seed=11, rose: color=%23d79f9f&seed=17

# card strokes (seed 1..3), trimmed to the stroke
"$CH" --headless=new --hide-scrollbars --default-background-color=00000000 --window-size=1200,640 \
  --screenshot=stroke-1.png "file://$PWD/stroke.html?seed=1"
magick stroke-1.png -trim +repage -bordercolor none -border 10 -resize 600x stroke-1.png
cwebp -q 75 -alpha_q 70 stroke-1.png -o ../assets/images/paper/brush-1.webp
```
