#!/usr/bin/env bash
# Generates hero-preview.html from the live _layouts/default.html so the local
# preview always matches what's deployed. Strips Liquid, fills in real site
# values, and forces the lotus hero on. Scratch tooling — not used by Jekyll.
set -euo pipefail
cd "$(dirname "$0")"

# Pull the inline hero <script>…</script> straight out of the layout.
HERO_SCRIPT="$(awk '/<script>/{f=1} f{print} /<\/script>/{f=0}' _layouts/default.html)"

cat > hero-preview.html <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>hero preview — entropic bloom</title>
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
  <header>
    <nav>
      <a href="#">Home</a>
      <a href="#">Entries</a>
    </nav>
    <h1 class="blog-title">entropic bloom</h1>
    <p class="tagline">some ideas emerging from the static</p>
  </header>

  <div class="lotus-container">
    <canvas class="hero-field" id="hero-field"></canvas>
    <div class="lotus">
      <div class="petals">
        <div class="petal" style="--rotation: 0deg;"></div>
        <div class="petal" style="--rotation: 72deg;"></div>
        <div class="petal" style="--rotation: 144deg;"></div>
        <div class="petal" style="--rotation: 216deg;"></div>
        <div class="petal" style="--rotation: 288deg;"></div>
      </div>
      <div class="center"></div>
    </div>
  </div>

  <div class="content">
    <div class="intro"><p>Preview build — hero only. Generated from _layouts/default.html.</p></div>
  </div>

  <svg width="0" height="0">
    <filter id="turbulence">
      <feTurbulence baseFrequency="0.01" numOctaves="3" result="turbulence" />
      <feDisplacementMap in="SourceGraphic" in2="turbulence" scale="10" />
    </filter>
  </svg>

${HERO_SCRIPT}
</body>
</html>
EOF

echo "wrote hero-preview.html"
