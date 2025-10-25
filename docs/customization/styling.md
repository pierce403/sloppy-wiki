# Custom Styling

Add your own CSS to customize the appearance.

## Adding Custom CSS

### Step 1: Create CSS File

Create `docs/css/extra.css`:

```css
/* Custom styles */
.md-typeset h1 {
  color: #2196F3;
}

.md-typeset code {
  background-color: #f5f5f5;
}
```

### Step 2: Reference in Config

Edit `mkdocs.yml`:

```yaml
extra_css:
  - css/extra.css
  - css/another.css
```

## Common Customizations

### Header Style

```css
.md-header {
  background: linear-gradient(to right, #667eea, #764ba2);
}
```

### Link Colors

```css
.md-typeset a {
  color: #FF4081;
}

.md-typeset a:hover {
  color: #F50057;
}
```

### Code Block Styling

```css
.md-typeset pre > code {
  border-radius: 8px;
  font-size: 0.9em;
}
```

### Custom Container

```css
.feature-box {
  border: 2px solid #2196F3;
  border-radius: 8px;
  padding: 1em;
  margin: 1em 0;
}
```

Use in Markdown:

```html
<div class="feature-box">
  Custom styled content
</div>
```

## CSS Variables

Material theme uses CSS variables:

```css
:root {
  --md-primary-fg-color: #2196F3;
  --md-primary-bg-color: #FFFFFF;
  --md-accent-fg-color: #FF4081;
  --md-text-font: "Roboto";
  --md-code-font: "Roboto Mono";
}
```

## Dark Mode Specific

```css
[data-md-color-scheme="slate"] {
  /* Dark mode styles */
  --md-primary-fg-color: #64B5F6;
}

[data-md-color-scheme="default"] {
  /* Light mode styles */
  --md-primary-fg-color: #2196F3;
}
```

## Responsive Design

```css
@media screen and (max-width: 76.1875em) {
  /* Mobile styles */
  .md-typeset h1 {
    font-size: 1.5em;
  }
}
```

## Tips

!!! warning "Don't Break Things"
    Test thoroughly after CSS changes. Avoid !important unless necessary.

!!! tip "Use Browser DevTools"
    Inspect elements to find the right selectors.

!!! tip "Start Small"
    Make incremental changes and test each one.

---

[Next: Plugins](plugins.md)

