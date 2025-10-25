# Sloppy Wiki Template 📚

A complete, ready-to-use template for creating beautiful documentation wikis with [MkDocs](https://www.mkdocs.org/) and [Material theme](https://squidfunk.github.io/mkdocs-material/).

[![Deploy Status](https://github.com/pierce403/sloppy-wiki/actions/workflows/deploy.yml/badge.svg)](https://github.com/pierce403/sloppy-wiki/actions/workflows/deploy.yml)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

## ✨ Features

- 🚀 **Quick Setup** - Get started in under 5 minutes
- 🎨 **Beautiful Theme** - Material Design with dark mode
- ⚙️ **Auto-Deploy** - GitHub Actions workflow included
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

## 📖 What's Inside

```
sloppy-wiki/
├── docs/              # All your content
│   ├── index.md      # Homepage
│   ├── css/          # Custom styles
│   └── img/          # Images and assets
├── mkdocs.yml        # Configuration (heavily commented!)
├── requirements.txt  # Python dependencies
├── activate.sh       # Environment setup script
├── serve.sh          # Development server
├── build.sh          # Build static site
└── .github/
    └── workflows/
        └── deploy.yml # Auto-deployment to GitHub Pages
```

## 📚 Documentation

The template includes comprehensive documentation covering:

- **Getting Started** - Installation, quick start, configuration
- **Content Creation** - Writing pages, Markdown tips, code blocks, diagrams
- **Customization** - Themes, navigation, styling, plugins
- **Deployment** - GitHub Pages, custom domains, alternatives
- **Examples** - Sample pages and templates

[View full documentation →](https://pierce403.github.io/sloppy-wiki)

## 🎯 Use Cases

Perfect for:

- 📖 Project documentation
- 👨‍💻 API references
- 🎓 Course materials and tutorials
- 📝 Personal knowledge bases
- 🏢 Team wikis
- 📚 Technical writing portfolios

## 🛠️ Tech Stack

- [MkDocs](https://www.mkdocs.org/) - Static site generator
- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) - Modern theme
- [PyMdown Extensions](https://facelessuser.github.io/pymdown-extensions/) - Enhanced Markdown
- [GitHub Actions](https://github.com/features/actions) - CI/CD automation
- [GitHub Pages](https://pages.github.com/) - Free hosting

## 📦 What Makes This Different?

Unlike other templates:

- ✅ **Everything Explained** - Every file is commented and documented
- ✅ **Complete Workflow** - From setup to deployment
- ✅ **Teaching Template** - Learn best practices by example
- ✅ **Actively Maintained** - Built with current versions
- ✅ **No Hidden Magic** - Understand every part of the setup

## 🚢 Deployment

### GitHub Pages (Recommended)

1. Push your code to GitHub
2. Go to Settings → Pages
3. Set Source to "GitHub Actions"
4. Push to `main` branch - site deploys automatically!

Your wiki will be live at: `https://yourusername.github.io/repository-name`

[Detailed deployment guide →](docs/deployment/github-pages.md)

### Other Options

- Netlify
- Vercel
- GitLab Pages
- Your own server

[See all deployment options →](docs/deployment/alternatives.md)

## 📝 Customization

The template is designed to be easily customized:

```yaml
# mkdocs.yml
site_name: My Awesome Wiki
theme:
  palette:
    primary: blue      # Your brand color
    accent: cyan       # Accent color
  logo: img/logo.png   # Your logo
```

[Full customization guide →](docs/customization/themes.md)

## 🤝 Contributing

Contributions welcome! Please feel free to:

- 🐛 Report bugs
- 💡 Suggest features
- 📝 Improve documentation
- 🔧 Submit pull requests

## 🤖 For AI Agents

This repository includes an [AGENTS.md](AGENTS.md) file with specific instructions for AI assistants working on wiki projects. It includes:

- Project structure and conventions
- Development workflow (test before commit!)
- Common tasks and patterns
- Troubleshooting guides

## 📄 License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

You're free to use this template for:
- ✅ Personal projects
- ✅ Commercial projects
- ✅ Open source projects
- ✅ Educational purposes

## 🙏 Acknowledgments

Built with these excellent open-source projects:

- [MkDocs](https://www.mkdocs.org/) by Tom Christie
- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) by Martin Donath
- [PyMdown Extensions](https://facelessuser.github.io/pymdown-extensions/) by Isaac Muse

## 🔗 Related Projects

- [deanpierce.net](https://github.com/pierce403/deanpierce.net) - The inspiration for this template
- [MkDocs Catalog](https://github.com/mkdocs/catalog) - More plugins and themes

## 📞 Support

- 📖 [Documentation](https://pierce403.github.io/sloppy-wiki)
- 🐛 [Issue Tracker](https://github.com/pierce403/sloppy-wiki/issues)
- 💬 [Discussions](https://github.com/pierce403/sloppy-wiki/discussions)

## ⭐ Show Your Support

If you find this template useful, please consider:

- ⭐ Starring the repository
- 🐛 Reporting issues or bugs
- 📝 Contributing improvements
- 🔗 Sharing with others

## 🎬 Quick Links

- [View Demo](https://pierce403.github.io/sloppy-wiki)
- [Quick Start Guide](docs/getting-started/quick-start.md)
- [Full Documentation](docs/index.md)
- [Deployment Guide](docs/deployment/github-pages.md)

---

**Ready to build your wiki?** [Get Started →](docs/getting-started/quick-start.md)

Built with ❤️ by [Pierce](https://github.com/pierce403) • [deanpierce.net](https://deanpierce.net)


