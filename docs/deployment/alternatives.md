# Alternative Hosting Options

Besides GitHub Pages, you can host your MkDocs wiki on various platforms.

## Static Site Hosts

### Netlify

**Pros:** Continuous deployment, custom domains, form handling  
**Cost:** Free tier available

```bash
# netlify.toml
[build]
  command = "mkdocs build"
  publish = "site"
```

### Vercel

**Pros:** Fast CDN, preview deployments  
**Cost:** Free for personal projects

### GitLab Pages

Similar to GitHub Pages, built into GitLab.

```.gitlab-ci.yml
pages:
  stage: deploy
  script:
    - pip install -r requirements.txt
    - mkdocs build -d public
  artifacts:
    paths:
      - public
```

## Traditional Web Hosting

### Your Own Server

```bash
# Build static site
mkdocs build

# Copy to server
rsync -avz site/ user@server:/var/www/html/
```

### Docker Deployment

```dockerfile
FROM python:3.11-slim
WORKDIR /docs
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
RUN mkdocs build
```

## Comparison

| Platform | Free Tier | HTTPS | Custom Domain | Build Time |
|----------|-----------|-------|---------------|------------|
| GitHub Pages | ✅ | ✅ | ✅ | Fast |
| Netlify | ✅ | ✅ | ✅ | Fast |
| Vercel | ✅ | ✅ | ✅ | Very Fast |
| GitLab Pages | ✅ | ✅ | ✅ | Medium |
| CloudFlare Pages | ✅ | ✅ | ✅ | Fast |

## Recommendations

- **Personal projects**: GitHub Pages (it's free and simple)
- **Team projects**: Netlify or Vercel (better collaboration features)
- **Enterprise**: Self-hosted or GitLab (full control)

---

[Back to GitHub Pages Guide](github-pages.md)

