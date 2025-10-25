# First Steps

Your environment is set up and running. Now what? This guide walks you through your first customizations.

## Understanding the Project Structure

```
sloppy-wiki/
├── docs/                    # All your content goes here
│   ├── index.md            # Homepage
│   ├── css/                # Custom stylesheets
│   ├── img/                # Images and assets
│   └── */                  # Content sections
├── mkdocs.yml              # Main configuration file
├── requirements.txt        # Python dependencies
├── activate.sh             # Environment setup
├── serve.sh                # Development server
├── build.sh                # Build static site
├── .github/workflows/      # CI/CD automation
└── site/                   # Generated output (git-ignored)
```

## Step 1: Personalize Site Settings

Open `mkdocs.yml` and update these basic settings:

```yaml
site_name: My Knowledge Base           # Your wiki's name
site_description: My personal documentation
site_author: Your Name
site_url: https://yourusername.github.io/my-wiki
```

```yaml
repo_name: yourusername/my-wiki
repo_url: https://github.com/yourusername/my-wiki
```

Save and check http://127.0.0.1:8000 - it updates automatically!

## Step 2: Customize the Homepage

Edit `docs/index.md` to create your own welcome page:

```markdown
# Welcome to My Wiki

This is my personal knowledge base where I document everything I learn.

## What's Inside

- Technical tutorials
- Project documentation
- Personal notes
- Research findings

## Quick Links

- [About Me](about.md)
- [Projects](projects/index.md)
- [Blog](blog/index.md)
```

## Step 3: Change the Color Scheme

Edit the theme colors in `mkdocs.yml`:

```yaml
theme:
  palette:
    - scheme: default
      primary: teal        # Try: red, blue, green, purple
      accent: cyan         # Highlight color
```

**Color options**: red, pink, purple, deep purple, indigo, blue, light blue, cyan, teal, green, light green, lime, yellow, amber, orange, deep orange

## Step 4: Add Your First Page

Create a new page about yourself:

```bash
# Create the file
cat > docs/about.md << 'EOF'
# About Me

Hi! I'm a developer who loves documenting things.

## Background

- Background info here
- More details

## Contact

- Email: your@email.com
- GitHub: @yourusername
EOF
```

Add it to navigation in `mkdocs.yml`:

```yaml
nav:
  - Home: index.md
  - About: about.md
```

## Step 5: Add a Logo

Create or download a logo image, then:

1. Place it in `docs/img/logo.png`
2. Update `mkdocs.yml`:

```yaml
theme:
  logo: img/logo.png
  favicon: img/logo.png
```

!!! tip "Logo Recommendations"
    - **Format**: PNG or SVG (SVG preferred)
    - **Size**: 128x128px or larger
    - **Background**: Transparent
    - **Color**: Should contrast with header background

## Step 6: Organize Your Content

Create sections for different topics:

```bash
# Create directory structure
mkdir -p docs/{tutorials,projects,notes}

# Create index pages
echo "# Tutorials" > docs/tutorials/index.md
echo "# Projects" > docs/projects/index.md
echo "# Notes" > docs/notes/index.md
```

Update navigation:

```yaml
nav:
  - Home: index.md
  
  - Tutorials:
    - tutorials/index.md
    
  - Projects:
    - projects/index.md
    
  - Notes:
    - notes/index.md
    
  - About: about.md
```

## Step 7: Add Some Content Features

Enable useful Markdown extensions in `mkdocs.yml`:

```yaml
markdown_extensions:
  - admonition          # Note/warning boxes
  - pymdownx.highlight  # Code highlighting
  - pymdownx.superfences # Fenced code blocks
  - pymdownx.tasklist:   # Checkboxes
      custom_checkbox: true
  - tables              # Markdown tables
```

Now you can use these features! See [Markdown Tips](../content/markdown-tips.md).

## Step 8: Test Your Build

Make sure everything builds correctly:

```bash
./build.sh
```

If successful, you'll see:
```
INFO    -  Cleaning site directory
INFO    -  Building documentation to directory: /path/to/site
INFO    -  Documentation built in 0.50 seconds
✓ Build complete!
```

## Step 9: Commit Your Changes

```bash
git add .
git commit -m "Personalize wiki with my information"
git push
```

## Step 10: Set Up GitHub Pages

See the [Deployment Guide](../deployment/github-pages.md) for detailed instructions.

Quick version:

1. Go to your repository on GitHub
2. Settings → Pages
3. Source: GitHub Actions
4. Push to main branch
5. Your site will be live at `https://yourusername.github.io/repository-name`

## Common First Customizations

### Remove Template Content

Delete example pages you don't need:

```bash
rm -rf docs/getting-started
rm -rf docs/examples
```

Update `mkdocs.yml` to remove them from navigation.

### Add a Blog Section

```bash
mkdir -p docs/blog
cat > docs/blog/index.md << 'EOF'
# Blog

Recent posts and updates.

## 2025

- [My First Post](2025-01-15-first-post.md)
EOF
```

### Create a Projects Portfolio

```bash
mkdir -p docs/projects
cat > docs/projects/my-cool-project.md << 'EOF'
# My Cool Project

![Screenshot](../img/project-screenshot.png)

## Overview

Description of your project...

## Features

- Feature 1
- Feature 2

## Links

- [GitHub](https://github.com/user/project)
- [Demo](https://example.com)
EOF
```

## What's Next?

### Essential Reading

1. [Writing Pages](../content/writing-pages.md) - Learn Markdown syntax
2. [Markdown Tips](../content/markdown-tips.md) - Advanced features
3. [Customization](../customization/themes.md) - Deep customization

### Advanced Topics

- [Custom Styling](../customization/styling.md)
- [Plugins](../customization/plugins.md)
- [Custom Domain](../deployment/custom-domain.md)

### Content Ideas

Some ideas for pages to create:

- **Technical Documentation**: API docs, setup guides, troubleshooting
- **Tutorials**: Step-by-step guides, how-tos
- **Notes**: Learning notes, research, bookmarks
- **Projects**: Portfolio items, case studies
- **Blog**: Updates, thoughts, announcements
- **Resources**: Curated lists, links, references

## Getting Help

- **Documentation**: You're reading it! Explore other sections
- **MkDocs Docs**: https://www.mkdocs.org
- **Material Theme**: https://squidfunk.github.io/mkdocs-material/
- **GitHub Issues**: Report bugs or ask questions

## Tips for Success

1. **Write regularly**: A wiki is valuable when it's actively maintained
2. **Start simple**: Don't over-engineer - focus on content first
3. **Use sections**: Organize content logically
4. **Link liberally**: Connect related pages
5. **Keep it searchable**: Use clear headings and keywords
6. **Backup regularly**: Git is your friend - commit often

## Checklist

Before moving on, make sure you've:

- [ ] Updated site name and description
- [ ] Created an about page
- [ ] Chosen a color scheme
- [ ] Added a logo (optional)
- [ ] Created at least one section
- [ ] Written your first page
- [ ] Tested the build
- [ ] Committed changes to Git
- [ ] Set up GitHub Pages deployment

---

**You're ready to build something great!** 🎉

Continue to [Writing Pages](../content/writing-pages.md) to learn how to create beautiful content.

