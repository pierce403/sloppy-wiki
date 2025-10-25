# GitHub Pages Deployment

Deploy your wiki to GitHub Pages for free hosting.

## Prerequisites

- GitHub account
- Repository with your wiki
- GitHub Actions enabled (default for public repos)

## Quick Setup

### Step 1: Push to GitHub

If you haven't already:

```bash
git add .
git commit -m "Initial commit"
git push -u origin main
```

### Step 2: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Click **Pages** in the left sidebar
4. Under **Source**, select: **GitHub Actions**

### Step 3: Workflow File

The template includes `.github/workflows/deploy.yml` which handles deployment automatically.

Verify it exists:

```bash
cat .github/workflows/deploy.yml
```

### Step 4: Push and Deploy

The workflow triggers automatically on push to `main`:

```bash
git push
```

Watch the deployment:

1. Go to **Actions** tab on GitHub
2. Watch the "Deploy MkDocs to GitHub Pages" workflow
3. Wait for the green checkmark ✓

### Step 5: Access Your Site

Your wiki will be available at:

```
https://YOUR-USERNAME.github.io/REPOSITORY-NAME
```

For example:
```
https://pierce403.github.io/sloppy-wiki
```

## Understanding the Workflow

The `.github/workflows/deploy.yml` file:

```yaml
name: Deploy MkDocs to GitHub Pages

on:
  push:
    branches:
      - main

permissions:
  contents: read
  pages: write
  id-token: write

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4
      
      - name: Setup Python
        uses: actions/setup-python@v5
        with:
          python-version: '3.11'
      
      - name: Install dependencies
        run: pip install -r requirements.txt
      
      - name: Build site
        run: mkdocs build --strict
      
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: ./site

  deploy:
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    needs: build
    steps:
      - name: Deploy
        uses: actions/deploy-pages@v4
```

## Updating site_url

After deployment, update `mkdocs.yml`:

```yaml
site_url: https://YOUR-USERNAME.github.io/REPOSITORY-NAME
```

Commit and push:

```bash
git add mkdocs.yml
git commit -m "Update site_url"
git push
```

## Custom Domain

See [Custom Domain Guide](custom-domain.md) for using your own domain.

## Troubleshooting

### Workflow Fails

**Check the logs:**

1. Go to **Actions** tab
2. Click on the failed workflow run
3. Expand the failed step to see error details

**Common issues:**

#### Missing Dependencies

Error: `ModuleNotFoundError: No module named 'mkdocs'`

**Solution:** Check `requirements.txt` is present and correct.

#### Build Errors

Error: `Config value: 'nav'. Error: ...`

**Solution:** Validate `mkdocs.yml` locally:

```bash
mkdocs build --strict
```

Fix any errors before pushing.

#### Permission Denied

Error: `Resource not accessible by integration`

**Solution:** Enable write permissions in `.github/workflows/deploy.yml`:

```yaml
permissions:
  contents: read
  pages: write
  id-token: write
```

### Page Not Found (404)

**Check these:**

1. **Workflow completed successfully**
   - Green checkmark in Actions tab

2. **GitHub Pages is enabled**
   - Settings → Pages → Source: GitHub Actions

3. **Wait a few minutes**
   - First deployment can take 5-10 minutes

4. **Check the URL**
   - Must be: `username.github.io/repo-name`
   - Not: `username.github.io` (unless repo is named `username.github.io`)

### Old Content Showing

**Clear browser cache:**

- Chrome/Edge: Ctrl+Shift+R (Cmd+Shift+R on Mac)
- Firefox: Ctrl+Shift+Del
- Or try incognito/private mode

### Deployment Successful But 404

**Check your repository name:**

If your repo is named `username.github.io`:
- Site will be at: `https://username.github.io`

For any other repo name `my-wiki`:
- Site will be at: `https://username.github.io/my-wiki`

Update `mkdocs.yml`:

```yaml
# For username.github.io repository
site_url: https://username.github.io

# For other repositories
site_url: https://username.github.io/repo-name
```

## Manual Deployment

If you prefer not to use GitHub Actions:

### Option 1: ghp-import

```bash
# Install ghp-import
pip install ghp-import

# Build site
mkdocs build

# Deploy
ghp-import -p -f site/
```

### Option 2: MkDocs Built-in

```bash
mkdocs gh-deploy
```

This builds and pushes to `gh-pages` branch.

!!! warning "Conflicts with GitHub Actions"
    If using manual deployment, remove `.github/workflows/deploy.yml` to avoid conflicts.

## Private Repositories

GitHub Pages for private repos requires:

- GitHub Pro, Team, or Enterprise account
- Or make your repository public

## Multiple Environments

Deploy to staging and production:

```yaml
on:
  push:
    branches:
      - main        # Production
      - staging     # Staging environment
```

## Monitoring Deployments

### View Deployment History

1. Go to **Deployments** (right sidebar on repo page)
2. See all deployments with timestamps
3. Click to view specific deployment logs

### Deployment Status Badge

Add to your README:

```markdown
![Deploy Status](https://github.com/USERNAME/REPO/actions/workflows/deploy.yml/badge.svg)
```

## Advanced Configuration

### Deploy on Tag

Only deploy when tagging a release:

```yaml
on:
  push:
    tags:
      - 'v*'
```

### Scheduled Deployments

Deploy daily at midnight:

```yaml
on:
  schedule:
    - cron: '0 0 * * *'
```

### Manual Trigger

Allow manual workflow runs:

```yaml
on:
  workflow_dispatch:
```

Then trigger from Actions tab → Run workflow.

## Cost

GitHub Pages is:

- ✅ **Free** for public repositories
- ✅ **Free** for private repos with GitHub Pro/Team/Enterprise
- ✅ 1GB storage limit
- ✅ 100GB bandwidth per month
- ✅ 10 builds per hour

For most wikis, this is more than enough.

## Next Steps

- [Custom Domain](custom-domain.md) - Use your own domain
- [Alternatives](alternatives.md) - Other hosting options
- [Configuration](../getting-started/configuration.md) - Optimize your site

## Resources

- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [MkDocs Deployment Guide](https://www.mkdocs.org/user-guide/deploying-your-docs/)

---

**Your wiki is now live!** 🎉

