# Installation Guide

Complete installation instructions for all platforms.

## System Requirements

- **Python**: 3.8 or higher
- **Git**: Latest version recommended
- **Disk Space**: ~100MB for dependencies
- **RAM**: 512MB minimum (1GB+ recommended)

## Platform-Specific Instructions

### macOS

#### Install Python

Python 3 usually comes pre-installed on macOS. Check your version:

```bash
python3 --version
```

If you need to install or upgrade:

```bash
# Using Homebrew (recommended)
brew install python3

# Or download from python.org
# https://www.python.org/downloads/macos/
```

#### Install Git

```bash
# Using Homebrew
brew install git

# Or download from git-scm.com
# https://git-scm.com/download/mac
```

### Linux

#### Debian/Ubuntu

```bash
# Update package list
sudo apt update

# Install Python 3 and pip
sudo apt install python3 python3-pip python3-venv git

# Verify installation
python3 --version
git --version
```

#### Fedora/RHEL/CentOS

```bash
# Install Python 3 and pip
sudo dnf install python3 python3-pip git

# Verify installation
python3 --version
git --version
```

#### Arch Linux

```bash
# Install Python and Git
sudo pacman -S python python-pip git

# Verify installation
python --version
git --version
```

### Windows

#### Install Python

1. Download Python from [python.org](https://www.python.org/downloads/windows/)
2. Run the installer
3. **Important**: Check "Add Python to PATH"
4. Click "Install Now"

Verify installation in Command Prompt or PowerShell:

```powershell
python --version
pip --version
```

#### Install Git

1. Download Git from [git-scm.com](https://git-scm.com/download/win)
2. Run the installer with default options
3. Verify installation:

```powershell
git --version
```

!!! tip "Windows Users"
    Consider using **Git Bash** (included with Git) or **Windows Subsystem for Linux (WSL)** 
    for a better command-line experience.

## Clone the Repository

### Using GitHub (Recommended)

1. **Fork the repository** on GitHub:
   - Go to https://github.com/pierce403/sloppy-wiki
   - Click "Fork" button

2. **Clone your fork**:
   ```bash
   git clone https://github.com/YOUR-USERNAME/sloppy-wiki.git
   cd sloppy-wiki
   ```

### Direct Clone

```bash
git clone https://github.com/pierce403/sloppy-wiki.git
cd sloppy-wiki
```

## Set Up Python Environment

### Automatic Setup (Recommended)

We provide a script that does everything:

```bash
source activate.sh
```

This will:
- Create a virtual environment
- Activate it
- Install all dependencies

### Manual Setup

If you prefer to do it manually:

```bash
# Create virtual environment
python3 -m venv venv

# Activate it
# On macOS/Linux:
source venv/bin/activate
# On Windows:
venv\Scripts\activate

# Upgrade pip
pip install --upgrade pip

# Install dependencies
pip install -r requirements.txt
```

## Verify Installation

Test that everything works:

```bash
# Check MkDocs is installed
mkdocs --version

# Try building the site
mkdocs build

# Start the development server
mkdocs serve
```

If the server starts successfully, open http://127.0.0.1:8000 in your browser.

## Installing Optional Dependencies

### For PDF Generation

```bash
pip install mkdocs-with-pdf
```

### For Additional Plugins

```bash
# Git revision dates
pip install mkdocs-git-revision-date-localized-plugin

# Minification
pip install mkdocs-minify-plugin

# Mermaid diagrams
pip install mkdocs-mermaid2-plugin
```

Add these to `requirements.txt` if you want them permanently.

## IDE/Editor Setup

### VS Code (Recommended)

Install these extensions:

- **Python** by Microsoft
- **Markdown All in One** by Yu Zhang
- **markdownlint** by David Anson
- **YAML** by Red Hat

### PyCharm

1. Open the project directory
2. PyCharm should auto-detect the virtual environment
3. Enable Markdown support in Settings → Plugins

### Vim/Neovim

Install these plugins:

- `vim-markdown` for Markdown syntax
- `ale` for linting
- `coc-yaml` for YAML support

## Troubleshooting

### "python3: command not found"

- **macOS/Linux**: Install Python 3 using your package manager
- **Windows**: Reinstall Python and check "Add to PATH"

### "Permission denied" on activate.sh

Make the script executable:

```bash
chmod +x activate.sh serve.sh build.sh
```

### "pip: command not found"

```bash
# macOS/Linux
python3 -m ensurepip --upgrade

# Windows
python -m ensurepip --upgrade
```

### Virtual Environment Won't Activate

**On Windows with PowerShell:**

You may need to enable script execution:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

**On macOS/Linux:**

Make sure you're using `source`:

```bash
source venv/bin/activate  # Correct
./venv/bin/activate       # Wrong!
```

### Dependencies Fail to Install

Try upgrading pip first:

```bash
pip install --upgrade pip setuptools wheel
pip install -r requirements.txt
```

### Port 8000 Already in Use

Use a different port:

```bash
mkdocs serve -a 127.0.0.1:8001
```

## Upgrading

To update to the latest version of dependencies:

```bash
# Activate your environment
source venv/bin/activate

# Upgrade packages
pip install --upgrade -r requirements.txt
```

To get updates from the template repository:

```bash
# Add upstream remote (first time only)
git remote add upstream https://github.com/pierce403/sloppy-wiki.git

# Fetch and merge updates
git fetch upstream
git merge upstream/main
```

## Uninstallation

To remove the project:

```bash
# Deactivate virtual environment (if active)
deactivate

# Remove the directory
cd ..
rm -rf sloppy-wiki
```

## Next Steps

Once installed, continue to:

- [Configuration Guide](configuration.md) - Customize your wiki
- [Quick Start](quick-start.md) - Start building content
- [Writing Pages](../content/writing-pages.md) - Learn Markdown features

---

Need help? [Open an issue](https://github.com/pierce403/sloppy-wiki/issues) on GitHub!

