# Entropic Bloom — Claude Context

## What this is

A personal blog at [entropicbloom.com](https://entropicbloom.com). The tagline is "some ideas emerging from the static". Topics: philosophy of mind, consciousness, AI ethics, and adjacent ideas. The writing voice is direct and engaged — not academic driness, not tech-bro casualness. Somewhere in between.

## Stack

- **Jekyll** static site generator
- **Pure CSS** — no Tailwind, no preprocessors, just `assets/css/style.css` with CSS custom properties
- **Vanilla JS** — inline scripts only, no build step, no bundler
- `jekyll-seo-tag` and `jekyll-redirect-from` plugins

## Key files

| File | Purpose |
|------|---------|
| `assets/css/style.css` | All styles and animations |
| `_layouts/default.html` | Root HTML shell — includes static overlay, lotus, SVG turbulence filter |
| `_layouts/post.html` | Single post template |
| `_includes/header.html` | Nav and site title |
| `index.html` | Home page — shows 4 most recent posts as cards, lotus enabled |
| `entries.html` | Full archive with tag filtering (JS) |
| `_posts/` | Markdown posts |
| `_config.yml` | Jekyll config — permalink format is `/:year/:month/:day/:title/` |

## Design system

**Color palette (CSS variables):**
```
--faded-coral:     #f2b8a4
--muted-rose:      #d79f9f
--dusty-lavender:  #c8b6d8
--aged-porcelain:  #f2f0e9  ← main background
--ash-white:       #e6e4df
--linen-white:     #f5f1ea
--rust-red:        #a6453e  ← primary accent (links, headings, tags)
--blood-red:       #9c464a
--pomegranate:     #a32c32
```

**Typography:**
- `Cormorant Garamond` (serif) — titles, post content, decorative text
- `Montserrat` (sans-serif, weight 300) — body, nav, meta

**Aesthetic principles:**
- Warm, muted, slightly aged palette — not clinical, not loud
- Subtle over obvious. Effects should feel textural, not decorative.
- The site has a deliberate "signal from static" aesthetic — the name, the tagline, and the visual approach all tie into this. Analog/organic over digital/sharp.
- Existing ambient effects: global fractal noise on `body::before`, static flicker overlay on `lotus-container`, animated lotus petals with SVG turbulence displacement, animated waves.

## Post front matter

```yaml
---
layout: post
title: "Post Title"
subtitle: "Optional — used as excerpt on cards and archive instead of auto-generated one"
date: YYYY-MM-DD
tags: [tag1, tag2]
status: ongoing  # optional — shows "Ongoing" instead of date
external_url: https://...  # optional — card links externally, opens in new tab
---
```

## Development branch convention

Feature branches follow the pattern `claude/<description>-<id>`.

## Style preferences

- Don't add comments to CSS unless the logic is non-obvious
- Don't introduce JavaScript frameworks or build tooling
- Keep effects subtle — this isn't a portfolio site trying to impress with flashy animations
- Prefer editing existing files over creating new ones
- No emojis in content or UI
