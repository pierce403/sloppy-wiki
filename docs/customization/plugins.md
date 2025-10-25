# Plugins

Extend MkDocs functionality with plugins.

## Built-in Plugins

### Search Plugin

```yaml
plugins:
  - search:
      lang: en
      separator: '[\s\-\.]+'
```

### Tags Plugin

Categorize pages with tags:

```yaml
plugins:
  - tags
```

Use in pages:

```markdown
---
tags:
  - tutorial
  - python
---
```

## Popular Third-Party Plugins

### Git Revision Date

Show last updated dates:

```bash
pip install mkdocs-git-revision-date-localized-plugin
```

```yaml
plugins:
  - git-revision-date-localized:
      enable_creation_date: true
```

### Minify Plugin

Compress HTML/CSS/JS:

```bash
pip install mkdocs-minify-plugin
```

```yaml
plugins:
  - minify:
      minify_html: true
      minify_js: true
      minify_css: true
```

### Awesome Pages

Auto-organize navigation:

```bash
pip install mkdocs-awesome-pages-plugin
```

```yaml
plugins:
  - awesome-pages
```

### Macros Plugin

Use variables and macros:

```bash
pip install mkdocs-macros-plugin
```

```yaml
plugins:
  - macros
```

### PDF Export

Generate PDF documentation:

```bash
pip install mkdocs-with-pdf
```

```yaml
plugins:
  - with-pdf
```

## Installing Plugins

1. Install via pip:
   ```bash
   pip install plugin-name
   ```

2. Add to requirements.txt:
   ```
   plugin-name>=1.0.0
   ```

3. Enable in mkdocs.yml:
   ```yaml
   plugins:
     - plugin-name
   ```

## Plugin Configuration

```yaml
plugins:
  - search:
      lang: en
  - tags:
      tags_file: tags.md
  - git-revision-date-localized:
      enable_creation_date: true
      type: timeago
```

## Creating Custom Plugins

See [MkDocs Plugin Development](https://www.mkdocs.org/dev-guide/plugins/) guide.

## Resources

- [MkDocs Plugins Catalog](https://github.com/mkdocs/catalog)
- [Material Plugins](https://squidfunk.github.io/mkdocs-material/plugins/)

---

[Back to Customization](themes.md)

