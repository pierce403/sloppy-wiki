# Sloppy Wiki Template 📚

A complete, ready-to-use template for creating beautiful documentation wikis with [MkDocs](https://www.mkdocs.org/) and [Material theme](https://squidfunk.github.io/mkdocs-material/).

[![Build Status](https://github.com/pierce403/sloppy-wiki/actions/workflows/deploy.yml/badge.svg)](https://github.com/pierce403/sloppy-wiki/actions/workflows/deploy.yml)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

## ✨ Features

- 🚀 **Quick Setup** - Get started in under 5 minutes
- 🎨 **Beautiful Theme** - Material Design with dark mode
- ⚙️ **Auto-Deploy** - Cloudflare native Git publishing with GitHub build validation
- 📝 **Rich Content** - Markdown extensions, code blocks, diagrams
- 🔍 **Built-in Search** - Fast client-side search
- 📱 **Mobile-Friendly** - Fully responsive design
- 🎓 **Well-Documented** - Learn by example with comprehensive guides

## 🚀 Quick Start

```bash
# 1. Clone or fork this repository
git clone https://github.com/pierce403/sloppy-wiki.git
cd sloppy-wiki

# 2. Set up environment
source activate.sh

# 3. Start development server
./serve.sh
```

Open http://127.0.0.1:8000 in your browser!

## 📖 Documentation

The template includes comprehensive documentation covering:

- **Getting Started** - Installation, quick start, configuration
- **Content Creation** - Writing pages, Markdown tips, code blocks, diagrams
- **Customization** - Themes, navigation, styling, plugins
- **Deployment** - GitHub Pages, custom domains, alternatives
- **Examples** - Sample pages and templates

[View full documentation →](https://sloppy.wiki)

## 🛠️ Tech Stack

- [MkDocs](https://www.mkdocs.org/) - Static site generator
- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) - Modern theme
- [PyMdown Extensions](https://facelessuser.github.io/pymdown-extensions/) - Enhanced Markdown
- [GitHub Actions](https://github.com/features/actions) - CI/CD automation
- [Cloudflare Workers Static Assets](https://developers.cloudflare.com/workers/static-assets/) - Native Git hosting

## Cloudflare publishing

The prepared Worker `sloppy-wiki` serves MkDocs output directly through Workers
Static Assets, including directory URLs, search, and the generated real 404 page.
Build locally with `npm ci && npm run build`; check packaging with
`npm run deploy:check`, and preview with `npm run dev`.
`requirements.lock` pins the renderer verified for this migration while the
original `requirements.txt` remains available for dependency maintenance.

Connect `pierce403/sloppy-wiki` in Cloudflare Workers Builds with production branch
`main`, root `/`, build `npm run build`, and deploy `npx wrangler deploy`.
Use all paths and disable builds for other branches. Cloudflare fetches and
publishes each production commit using credentials retained in Cloudflare.
GitHub Actions validates and retains artifacts; it needs no Cloudflare secrets.
`.nvmrc` and `.python-version` select Node.js 22 and Python 3.12.

The configuration initially uses `sloppy-wiki.bcrt43.workers.dev`. Attach
`sloppy.wiki` only after its Cloudflare zone/import is verified. Keep `docs/CNAME`
and the prior `gh-pages` deployment for recovery. Do not overlap manual deployment
with native Git deployment. Git connection, deployment, domain and DNS verification
remain separate migration steps recorded in `NOTES.md`.

## 📄 License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

Built with these excellent open-source projects:

- [MkDocs](https://www.mkdocs.org/) by Tom Christie
- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) by Martin Donath
- [PyMdown Extensions](https://facelessuser.github.io/pymdown-extensions/) by Isaac Muse

---

**Ready to build your wiki?** [Get Started →](https://sloppy.wiki/getting-started/quick-start/)

Built with ❤️ by [Pierce](https://github.com/pierce403)
