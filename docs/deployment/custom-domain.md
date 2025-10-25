# Custom Domain

Use your own domain name instead of `github.io`.

## Overview

Instead of `username.github.io/wiki`, you can use:

- `wiki.example.com` (subdomain)
- `docs.example.com`
- `example.com` (apex domain)

## Prerequisites

- Deployed wiki on GitHub Pages
- A domain name you own
- Access to domain DNS settings

## Setup Steps

### Step 1: Add CNAME File

Create `docs/CNAME` with your domain:

```bash
echo "wiki.example.com" > docs/CNAME
```

Or for apex domain:

```bash
echo "example.com" > docs/CNAME
```

Commit and push:

```bash
git add docs/CNAME
git commit -m "Add custom domain"
git push
```

### Step 2: Update mkdocs.yml

```yaml
site_url: https://wiki.example.com
```

### Step 3: Configure DNS

#### For Subdomain (wiki.example.com)

Add a CNAME record:

| Type | Name | Value |
|------|------|-------|
| CNAME | wiki | username.github.io |

#### For Apex Domain (example.com)

Add A records pointing to GitHub's IPs:

| Type | Name | Value |
|------|------|-------|
| A | @ | 185.199.108.153 |
| A | @ | 185.199.109.153 |
| A | @ | 185.199.110.153 |
| A | @ | 185.199.111.153 |

Add AAAA records for IPv6:

| Type | Name | Value |
|------|------|-------|
| AAAA | @ | 2606:50c0:8000::153 |
| AAAA | @ | 2606:50c0:8001::153 |
| AAAA | @ | 2606:50c0:8002::153 |
| AAAA | @ | 2606:50c0:8003::153 |

### Step 4: Enable HTTPS

1. Go to repo **Settings** → **Pages**
2. Enter your custom domain
3. Click **Save**
4. Wait for DNS check (can take up to 24 hours)
5. Check **Enforce HTTPS** once available

## DNS Provider Examples

### Cloudflare

1. Go to **DNS** tab
2. Click **Add record**
3. Type: `CNAME`
4. Name: `wiki` (or `@` for apex)
5. Target: `username.github.io`
6. Proxy status: Can be proxied (orange cloud) or DNS only (gray cloud)
7. Click **Save**

!!! tip "Cloudflare Benefits"
    - Free SSL certificate
    - CDN acceleration
    - DDoS protection
    - Analytics

### Namecheap

1. Go to **Advanced DNS** tab
2. Click **Add New Record**
3. Type: `CNAME Record`
4. Host: `wiki`
5. Value: `username.github.io`
6. TTL: Automatic
7. Click **Save**

### Google Domains

1. Go to **DNS** section
2. Scroll to **Custom resource records**
3. Name: `wiki`
4. Type: `CNAME`
5. Data: `username.github.io.` (note the trailing dot)
6. Click **Add**

### GoDaddy

1. Go to **DNS Management**
2. Click **Add** under Records
3. Type: `CNAME`
4. Name: `wiki`
5. Value: `username.github.io`
6. TTL: 1 Hour
7. Click **Save**

## Verification

### Check DNS Propagation

```bash
# Check CNAME
dig wiki.example.com CNAME

# Check A records
dig example.com A
```

Or use online tools:

- [DNS Checker](https://dnschecker.org/)
- [WhatsMyDNS](https://www.whatsmydns.net/)

### Test Your Site

```bash
curl -I https://wiki.example.com
```

Should return `200 OK` once configured.

## Troubleshooting

### DNS Not Propagating

DNS changes can take time:

- **Minimum**: 5 minutes
- **Typical**: 1-6 hours
- **Maximum**: 48 hours

**Speed it up:**

1. Use low TTL values (300 seconds)
2. Clear your local DNS cache:

```bash
# macOS
sudo dscacheutil -flushcache

# Linux
sudo systemd-resolve --flush-caches

# Windows
ipconfig /flushdns
```

### Certificate Errors

If you see SSL warnings:

1. Wait for DNS to fully propagate
2. GitHub needs to verify domain ownership
3. Can take up to 24 hours for certificate issuance
4. Check Settings → Pages for status

### "Domain already taken"

Error in GitHub Pages settings:

**Cause:** Domain is used by another GitHub repository.

**Solution:** 

1. Remove domain from other repository
2. Or use a different subdomain

### Redirect Loop

**Cause:** Cloudflare proxy with HTTPS redirect

**Solution:**

1. In Cloudflare: SSL/TLS → Overview
2. Set SSL mode to **Full** (not Flexible)

### WWW vs Non-WWW

To redirect `www.example.com` to `example.com`:

1. Add CNAME in DNS:

| Type | Name | Value |
|------|------|-------|
| CNAME | www | example.com |

2. Or use your DNS provider's redirect feature

## Best Practices

### Use HTTPS

Always enforce HTTPS:

- ✅ Secure
- ✅ Better SEO
- ✅ Required for modern features
- ✅ Free with GitHub Pages

### Choose the Right Domain Type

**Subdomain** (`wiki.example.com`):
- ✅ Easier to set up
- ✅ Works immediately
- ✅ Can use main site for something else

**Apex domain** (`example.com`):
- ✅ Shorter URL
- ✅ Professional appearance
- ⚠️ Requires A records (more complex)

### Monitor Your Domain

- Set up monitoring (e.g., UptimeRobot)
- Check certificate expiration
- Renew domain name annually

## Multiple Domains

To serve your wiki from multiple domains:

1. Choose one primary domain for `CNAME`
2. Set up redirects at DNS level for others
3. Or use Cloudflare Page Rules

## Costs

- **Domain registration**: $10-15/year
- **GitHub Pages**: Free
- **SSL Certificate**: Free (automatic)
- **CDN (optional)**: Free with Cloudflare

## Email Setup

Using apex domain for wiki? Set up email separately:

**Option 1:** Use subdomain for email
- Site: `example.com`
- Email: `mail.example.com`

**Option 2:** Use MX records
- Add MX records for email provider
- These work alongside A records for web

## Testing Checklist

Before going live:

- [ ] CNAME file committed and pushed
- [ ] DNS records configured correctly
- [ ] DNS propagation complete (check multiple locations)
- [ ] Site loads at custom domain
- [ ] HTTPS enabled and working
- [ ] Certificate valid (no warnings)
- [ ] All internal links work
- [ ] Images and assets load correctly
- [ ] Search functionality works
- [ ] Mobile view looks good

## Next Steps

- [Alternatives](alternatives.md) - Other hosting options
- [Configuration](../getting-started/configuration.md) - Optimize your site
- [GitHub Pages](github-pages.md) - Back to main deployment guide

## Resources

- [GitHub Custom Domain Docs](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site)
- [Cloudflare DNS Guide](https://developers.cloudflare.com/dns/)
- [DNS Propagation Checker](https://dnschecker.org/)

---

**Your wiki, your domain!** 🌐

