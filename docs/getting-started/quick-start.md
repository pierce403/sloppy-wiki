# Quick Start Guide

Get your wiki up and running in under 5 minutes!

## Prerequisites

Before you begin, make sure you have:

- **Git** installed ([download here](https://git-scm.com/))
- **Python 3.8+** installed ([download here](https://www.python.org/))
- A **GitHub account** (for deployment)
- A **text editor** (VS Code, Sublime, Vim, etc.)

## Step 1: Get the Template

You have two options:

### Option A: Fork on GitHub (Recommended)

1. Go to [github.com/pierce403/sloppy-wiki](https://github.com/pierce403/sloppy-wiki)
2. Click the "Fork" button in the top right
3. Clone your fork:

```bash
git clone https://github.com/YOUR-USERNAME/sloppy-wiki.git
cd sloppy-wiki
```

### Option B: Clone Directly

```bash
git clone https://github.com/pierce403/sloppy-wiki.git
cd sloppy-wiki
rm -rf .git  # Remove original git history
git init     # Start fresh
```

## Step 2: Set Up Environment

Run the activation script to set up your Python environment:

```bash
source activate.sh
```

This script will:

- Create a virtual environment (`venv/`)
- Activate it
- Install all required dependencies
- Give you next-step instructions

!!! tip "Virtual Environment"
    The `activate.sh` script creates an isolated Python environment. 
    You'll need to activate it each time you open a new terminal:
    ```bash
    source venv/bin/activate
    ```

## Step 3: Start the Development Server

```bash
./serve.sh
```

Your wiki will be available at **http://127.0.0.1:8000**

The server includes live reload - any changes you make to files will automatically refresh in your browser!

!!! success "You're Running!"
    Open http://127.0.0.1:8000 and you should see this wiki template.

## Step 4: Customize Your Wiki

### Update Site Information

Edit `mkdocs.yml` and change:

```yaml
site_name: Sloppy Wiki Template  # Change this!
site_description: Your wiki description
site_author: Your Name Here
site_url: https://yourusername.github.io/your-wiki
```

### Modify the Homepage

Edit `docs/index.md` to create your own landing page.

### Add Your First Page

1. Create a new markdown file in `docs/`:
   ```bash
   echo "# My First Page" > docs/my-first-page.md
   ```

2. Add it to the navigation in `mkdocs.yml`:
   ```yaml
   nav:
     - Home: index.md
     - My First Page: my-first-page.md
   ```

3. The page will automatically reload in your browser!

## Step 5: Build Your Site

When you're ready to see the final output:

```bash
./build.sh
```

This generates static HTML in the `site/` directory.

!!! info "Testing the Build"
    You can test the built site locally:
    ```bash
    cd site
    python -m http.server 8000
    ```

## Step 6: Deploy to GitHub Pages

See the [GitHub Pages Deployment Guide](../deployment/github-pages.md) for detailed instructions.

**Quick version:**

1. Push your changes to GitHub
2. The site will automatically deploy via GitHub Actions
3. Access it at `https://yourusername.github.io/repository-name`

## Next Steps

Now that you have the basics working, explore:

- **[Configuration Guide](configuration.md)** - Customize theme, colors, and features
- **[Writing Pages](../content/writing-pages.md)** - Learn Markdown features
- **[Deployment](../deployment/github-pages.md)** - Publish your wiki
- **[Customization](../customization/themes.md)** - Make it your own

## Troubleshooting

### Port Already in Use

If port 8000 is busy:

```bash
mkdocs serve -a 127.0.0.1:8001
```

### Build Errors

Make sure your `mkdocs.yml` is valid YAML (check indentation!):

```bash
python -c "import yaml; yaml.safe_load(open('mkdocs.yml'))"
```

### Dependencies Issues

Reinstall from scratch:

```bash
rm -rf venv/
source activate.sh
```

## Getting Help

- Check the [full documentation](../index.md)
- Review [example pages](../examples/sample-page.md)
- Open an issue on [GitHub](https://github.com/pierce403/sloppy-wiki/issues)

---

**Happy wiki building!** 🚀

