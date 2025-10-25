# Navigation Customization

Organize your wiki's navigation structure.

## Basic Navigation

Define navigation in `mkdocs.yml`:

```yaml
nav:
  - Home: index.md
  - Getting Started:
    - Installation: getting-started/installation.md
    - Quick Start: getting-started/quick-start.md
  - User Guide:
    - Overview: guide/overview.md
    - Tutorials: guide/tutorials.md
  - About: about.md
```

## Auto-Navigation

Omit `nav:` to auto-generate from file structure:

```
docs/
├── index.md
├── getting-started/
│   ├── installation.md
│   └── quick-start.md
└── about.md
```

MkDocs creates navigation automatically from this structure.

## Section Index Pages

Use `index.md` as section overview:

```yaml
nav:
  - Home: index.md
  - Getting Started:
    - getting-started/index.md
    - Installation: getting-started/installation.md
```

Enable in theme:

```yaml
theme:
  features:
    - navigation.indexes
```

## Navigation Tabs

Show top-level sections as tabs:

```yaml
theme:
  features:
    - navigation.tabs
    - navigation.tabs.sticky  # Sticky tabs on scroll
```

## Expanding Sections

```yaml
theme:
  features:
    - navigation.expand  # Expand all by default
```

## Hide Navigation

Per-page metadata:

```markdown
---
hide:
  - navigation
  - toc
---

# Page Content
```

## Navigation Icons

Add icons to navigation:

```yaml
nav:
  - Home: index.md
  - 🚀 Getting Started:
    - Installation: getting-started/installation.md
```

Or use Material icons in custom navigation.

## Best Practices

!!! tip "Keep It Shallow"
    Limit nesting to 2-3 levels for better UX.

!!! tip "Logical Grouping"
    Group related pages together.

!!! tip "Clear Names"
    Use descriptive, scannable names.

---

[Next: Styling](styling.md)

