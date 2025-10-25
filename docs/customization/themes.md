# Themes and Colors

Customize the look and feel of your wiki.

## Color Schemes

Material theme supports extensive color customization.

### Primary and Accent Colors

Edit `mkdocs.yml`:

```yaml
theme:
  name: material
  palette:
    primary: indigo    # Header and primary elements
    accent: pink       # Links and emphasis
```

**Available colors:**

red, pink, purple, deep purple, indigo, blue, light blue, cyan, teal, green, light green, lime, yellow, amber, orange, deep orange, brown, grey, blue grey

### Light and Dark Mode

```yaml
theme:
  palette:
    # Light mode
    - media: "(prefers-color-scheme: light)"
      scheme: default
      primary: blue
      accent: blue
      toggle:
        icon: material/brightness-7
        name: Switch to dark mode
    
    # Dark mode
    - media: "(prefers-color-scheme: dark)"
      scheme: slate
      primary: blue
      accent: blue
      toggle:
        icon: material/brightness-4
        name: Switch to light mode
```

## Custom Fonts

```yaml
theme:
  font:
    text: Roboto
    code: Roboto Mono
```

Popular choices:

- **Sans-serif**: Roboto, Open Sans, Lato, Montserrat, Ubuntu
- **Serif**: Roboto Slab, Merriweather, Lora
- **Monospace**: Roboto Mono, Fira Code, JetBrains Mono, Source Code Pro

!!! tip
    Use fonts from [Google Fonts](https://fonts.google.com/) for easy loading.

## Logo and Favicon

```yaml
theme:
  logo: img/logo.png      # Or .svg
  favicon: img/favicon.png
```

**Logo recommendations:**
- Size: 128x128px or larger
- Format: PNG or SVG (SVG preferred)
- Background: Transparent

**Favicon recommendations:**
- Size: 32x32px or 16x16px
- Format: PNG or ICO

## Feature Toggles

Enable/disable UI features:

```yaml
theme:
  features:
    - announce.dismiss          # Dismissible announcement bar
    - content.code.annotate     # Code annotations
    - content.code.copy         # Copy button
    - content.tabs.link         # Link content tabs
    - navigation.expand         # Expand all sections
    - navigation.footer         # Previous/next footer
    - navigation.indexes        # Section index pages
    - navigation.sections       # Group nav items
    - navigation.tabs           # Top-level tabs
    - navigation.tabs.sticky    # Sticky tabs
    - navigation.top            # Back-to-top button
    - navigation.tracking       # Anchor tracking
    - search.highlight          # Highlight search terms
    - search.share              # Share search link
    - search.suggest            # Search suggestions
    - toc.follow                # Follow TOC sidebar
```

## Custom CSS

Create `docs/css/extra.css`:

```css
:root {
  --md-primary-fg-color: #2196F3;
  --md-accent-fg-color: #FF4081;
}

.md-header {
  background-color: linear-gradient(to right, #667eea 0%, #764ba2 100%);
}
```

Reference in `mkdocs.yml`:

```yaml
extra_css:
  - css/extra.css
```

## Complete Example

```yaml
theme:
  name: material
  custom_dir: overrides
  
  palette:
    - scheme: default
      primary: indigo
      accent: indigo
      toggle:
        icon: material/weather-night
        name: Dark mode
    - scheme: slate
      primary: indigo
      accent: indigo
      toggle:
        icon: material/weather-sunny
        name: Light mode
  
  font:
    text: Roboto
    code: Roboto Mono
  
  logo: img/logo.svg
  favicon: img/favicon.png
  
  features:
    - navigation.tabs
    - navigation.sections
    - navigation.expand
    - navigation.top
    - search.suggest
    - search.highlight
    - content.code.copy

extra_css:
  - css/custom-styles.css
```

---

[Next: Navigation Customization](navigation.md)

