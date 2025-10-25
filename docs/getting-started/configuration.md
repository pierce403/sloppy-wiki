# Configuration Guide

Learn how to customize your wiki by editing `mkdocs.yml`.

## Basic Configuration

### Site Information

The most important settings at the top of `mkdocs.yml`:

```yaml
site_name: My Awesome Wiki
site_description: Everything you need to know about my project
site_author: Your Name
site_url: https://yourusername.github.io/my-wiki
```

| Setting | Description | Required |
|---------|-------------|----------|
| `site_name` | Appears in browser tab and header | Yes |
| `site_description` | Used for SEO and social sharing | Recommended |
| `site_author` | Your name or organization | Optional |
| `site_url` | Full URL where wiki will be hosted | For deployment |

### Repository Links

Link back to your GitHub repository:

```yaml
repo_name: yourusername/your-wiki
repo_url: https://github.com/yourusername/your-wiki
edit_uri: edit/main/docs/
```

This adds a GitHub icon to your header and "Edit" buttons on each page.

## Theme Configuration

### Colors and Palette

The Material theme supports color customization:

```yaml
theme:
  name: material
  palette:
    # Light mode
    - media: "(prefers-color-scheme: light)"
      scheme: default
      primary: indigo      # Header/accent color
      accent: indigo       # Links and buttons
      toggle:
        icon: material/brightness-7
        name: Switch to dark mode
    
    # Dark mode
    - media: "(prefers-color-scheme: dark)"
      scheme: slate
      primary: indigo
      accent: indigo
      toggle:
        icon: material/brightness-4
        name: Switch to light mode
```

**Available colors**: red, pink, purple, deep purple, indigo, blue, light blue, cyan, teal, green, light green, lime, yellow, amber, orange, deep orange

### Fonts

Customize text and code fonts:

```yaml
theme:
  font:
    text: Roboto           # Body text
    code: Roboto Mono      # Code blocks
```

Popular options:
- **Text**: Roboto, Open Sans, Lato, Montserrat, Ubuntu
- **Code**: Roboto Mono, Fira Code, Source Code Pro, JetBrains Mono

!!! tip "Using Custom Fonts"
    You can use any Google Fonts. Just specify the name as it appears on 
    [fonts.google.com](https://fonts.google.com/).

### Logo and Favicon

Add your branding:

```yaml
theme:
  logo: img/logo.png      # Appears in header (SVG or PNG)
  favicon: img/favicon.png # Browser tab icon
```

Place image files in `docs/img/` directory.

## Navigation Features

Enable/disable features in the theme:

```yaml
theme:
  features:
    - navigation.tabs           # Top-level sections as tabs
    - navigation.sections       # Group items in sidebar
    - navigation.expand         # Expand all sections by default
    - navigation.path           # Breadcrumb navigation
    - navigation.top            # Back-to-top button
    - navigation.indexes        # Section index pages
    - search.suggest            # Search suggestions
    - search.highlight          # Highlight search terms
    - search.share              # Share search results
    - content.code.copy         # Copy button on code blocks
    - content.action.edit       # Edit button on pages
    - content.action.view       # View source button
```

### Navigation Structure

Define your navigation tree in `mkdocs.yml`:

```yaml
nav:
  - Home: index.md
  
  - Getting Started:
    - Installation: getting-started/installation.md
    - Quick Start: getting-started/quick-start.md
  
  - User Guide:
    - guide/overview.md
    - guide/tutorials.md
  
  - About: about.md
```

!!! note "Auto-Navigation"
    If you don't specify `nav:`, MkDocs will automatically generate navigation 
    from your directory structure.

## Markdown Extensions

Enable enhanced Markdown features:

```yaml
markdown_extensions:
  # Basic extensions
  - abbr              # Abbreviations
  - admonition        # Note/warning boxes
  - attr_list         # Add attributes to HTML
  - def_list          # Definition lists
  - footnotes         # Footnote support
  - tables            # GitHub-style tables
  - toc:              # Table of contents
      permalink: true # Link to headers
  
  # PyMdown extensions
  - pymdownx.highlight:    # Syntax highlighting
      linenums: true
  - pymdownx.superfences   # Advanced code blocks
  - pymdownx.tasklist:     # Task lists
      custom_checkbox: true
```

See [Markdown Tips](../content/markdown-tips.md) for examples of what each extension enables.

## Plugins

Add functionality with plugins:

```yaml
plugins:
  - search:              # Built-in search
      lang: en
  - tags                 # Tag pages
  - git-revision-date-localized:  # Last modified dates
      enable_creation_date: true
  - minify:              # Compress HTML/CSS/JS
      minify_html: true
```

!!! warning "Plugin Dependencies"
    Install plugin packages first:
    ```bash
    pip install mkdocs-git-revision-date-localized-plugin
    pip install mkdocs-minify-plugin
    ```

## Custom CSS and JavaScript

### Adding Custom Styles

Reference your custom CSS:

```yaml
extra_css:
  - css/custom-styles.css
  - css/extra.css
```

Files go in `docs/css/` directory.

### Adding Custom Scripts

```yaml
extra_js:
  - js/custom.js
  - https://cdn.example.com/library.js
```

## Social Links

Add social media links to your footer:

```yaml
extra:
  social:
    - icon: fontawesome/brands/github
      link: https://github.com/yourusername
    - icon: fontawesome/brands/twitter
      link: https://twitter.com/yourusername
    - icon: fontawesome/brands/linkedin
      link: https://linkedin.com/in/yourusername
```

Available icons: [Font Awesome](https://fontawesome.com/icons)

## Copyright and License

```yaml
copyright: Copyright &copy; 2025 Your Name
```

Or with HTML:

```yaml
copyright: >
  Copyright &copy; 2025 Your Name<br>
  Licensed under <a href="https://opensource.org/licenses/MIT">MIT License</a>
```

## Analytics

Add Google Analytics:

```yaml
extra:
  analytics:
    provider: google
    property: G-XXXXXXXXXX
```

## Advanced Configuration

### Custom Homepage

Set a different file as homepage:

```yaml
nav:
  - Home: index.md  # This becomes your homepage
```

### Multi-language Setup

```yaml
plugins:
  - i18n:
      default_language: en
      languages:
        en: English
        es: Español
```

### Site Directory

Change output directory:

```yaml
site_dir: public  # Default is 'site'
```

### Strict Mode

Fail builds on warnings:

```yaml
strict: true
```

Or run: `mkdocs build --strict`

## Example Configurations

### Minimal Setup

```yaml
site_name: My Wiki

theme:
  name: material

nav:
  - Home: index.md
  - About: about.md
```

### Full-Featured Setup

```yaml
site_name: Professional Wiki
site_url: https://example.com
repo_url: https://github.com/user/repo

theme:
  name: material
  palette:
    - scheme: default
      primary: blue
      toggle:
        icon: material/brightness-7
        name: Dark mode
    - scheme: slate
      primary: blue
      toggle:
        icon: material/brightness-4
        name: Light mode
  features:
    - navigation.tabs
    - navigation.sections
    - navigation.expand
    - search.suggest
    - content.code.copy

plugins:
  - search
  - tags
  - git-revision-date-localized

extra:
  social:
    - icon: fontawesome/brands/github
      link: https://github.com/user
```

## Testing Your Configuration

After making changes:

1. **Test locally**: `./serve.sh`
2. **Check for errors**: Look at terminal output
3. **Validate YAML**: 
   ```bash
   python -c "import yaml; yaml.safe_load(open('mkdocs.yml'))"
   ```
4. **Build strictly**: `mkdocs build --strict`

## Troubleshooting

### YAML Syntax Errors

Common mistakes:

```yaml
# ❌ Wrong: Missing space after colon
site_name:My Wiki

# ✅ Correct: Space after colon
site_name: My Wiki

# ❌ Wrong: Inconsistent indentation
nav:
  - Home: index.md
    - About: about.md

# ✅ Correct: Consistent indentation
nav:
  - Home: index.md
  - About: about.md
```

### Feature Not Working

1. Check if plugin is installed
2. Verify plugin is listed in `plugins:` section
3. Check for typos in feature names
4. Review plugin documentation for required config

## Next Steps

- [Customization Guide](../customization/themes.md) - Deep dive into theming
- [Writing Pages](../content/writing-pages.md) - Start creating content
- [Deployment](../deployment/github-pages.md) - Publish your wiki

---

For complete configuration reference, see the [MkDocs documentation](https://www.mkdocs.org/user-guide/configuration/).

