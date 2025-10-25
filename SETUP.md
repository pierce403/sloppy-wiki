# Sloppy Wiki — First-time Provisioning Guide ✅

Use this checklist the very first time you stand up a new wiki from the Sloppy Wiki template.
Follow every step in order so your copy ships with coherent branding, navigation, and CI/CD.

## Before you begin

- You already created a repository from the template (see `README.md` for cloning steps).
- GitHub CLI or git is installed locally.
- Python 3.11+ is on your PATH (the provided `activate.sh` bootstraps the virtualenv).
- Optional but helpful: logo and brand palette assets are accessible on your machine.

> Keep this guide open while you work—checking off each item prevents surprises later.

## Step 1 — Confirm the template clone

1. Run `git remote -v` and verify the origin points at **your** GitHub repo.
2. Open `README.md` and replace any placeholder org/user names with your own.
3. Review `LICENSE` to confirm it matches your distribution plan (Apache 2.0 by default).

## Step 2 — Bootstrap the tooling

```bash
source activate.sh
./serve.sh    # leave running in a dedicated terminal tab
```

If dependencies are missing, install them inside the virtual environment with `pip install -r requirements.txt`.
Visit `http://127.0.0.1:8000` to ensure the base wiki renders before customization.

## Step 3 — Gather branding decisions

Ask the stakeholder (or yourself) the following:

- **Logo**: Do you have an SVG/PNG logo? Where should it live (`docs/img/logo.png` by convention)?
- **Primary color**: Provide a HEX code for the brand’s main color.
- **Accent color**: Provide a secondary HEX for highlights or callouts.
- **Default mode**: Should the site open in light or dark mode?
- **Site name & tagline**: What should appear in the left nav header and metadata?
- **Favicon**: Reuse the logo or another icon?

Document the answers at the top of this file so future contributors know the source of truth.

## Step 4 — Wire up branding in `mkdocs.yml`

1. Copy your logo into `docs/img/`.
2. Edit `mkdocs.yml`:
   - Update `site_name` and `site_description`.
   - Under `theme`, set `logo` to your asset path and configure a `palette`.
   - Add `favicon` if you have one.
3. Example palette snippet (replace HEX codes):

```yaml
theme:
  logo: img/logo.png
  favicon: img/favicon.png
  palette:
    - media: "(prefers-color-scheme: light)"
      scheme: default
      primary: "indigo"
      accent: "#FF5722"
    - media: "(prefers-color-scheme: dark)"
      scheme: slate
      primary: "indigo"
      accent: "#FFAB91"
```

Use literal color names supported by Material or raw HEX values.

## Step 5 — Customize navigation and content

1. Decide on top-level sections (e.g., Overview, How-To, API, FAQ).
2. Create directories/files inside `docs/` for each section.
3. Update the `nav:` block in `mkdocs.yml` to mirror those files.
4. In each Markdown file, include a one-sentence intro describing where the reader is (breadcrumb style).

Run `./serve.sh` (already live) and confirm the nav and pages match your plan.

## Step 6 — Update landing content

- Edit `docs/index.md` to welcome users to *your* wiki.
- Replace placeholder screenshots or TODO boxes with meaningful content.
- Mention where people should start (e.g., “Start with Getting Started → Installation”).

## Step 7 — Verify quality locally

1. Keep `./serve.sh` running and exercise the site in light and dark modes.
2. Test mobile and tablet layouts using your browser’s responsive tools.
3. Run `./build.sh` and fix any warnings (the GitHub Action runs with `--strict`).

## Step 8 — Configure deployment

1. In your GitHub repo settings, enable Pages → Deploy from GitHub Actions.
2. Ensure the provided `deploy.yml` workflow exists under `.github/workflows/`.
3. If you need a custom domain, add `docs/CNAME` and point DNS to GitHub Pages.
4. Optional: add repository secrets if you integrate with other services.

## Step 9 — Capture decisions and commit

1. Summarize branding choices and setup notes in `SETUP.md` (below this checklist).
2. Stage changes: `git add .`
3. Run `./build.sh` one more time.
4. Commit with a descriptive message, e.g., `git commit -m "Provision wiki with ACME branding"`.
5. Push to GitHub and confirm the Action completes successfully.

---

**Done?** Great—your template is now provisioned.
Whenever you revisit branding or structure, update this document so new contributors (human or AI) can retrace the original setup rationale.

## Decision log template

Fill this table during Step 3 (or update it later) so anyone can quickly understand the brand configuration.

| Item            | Value / File                               | Notes |
|-----------------|---------------------------------------------|-------|
| Site name       |                                             |       |
| Tagline         |                                             |       |
| Logo path       | `docs/img/`                                 |       |
| Favicon path    |                                             |       |
| Primary color   |                                             | e.g., HEX or Material token |
| Accent color    |                                             |       |
| Default mode    |                                             | light/dark |
| Custom domain   |                                             | if using `CNAME` |

> Tip: Treat this table like infra docs—update it whenever branding or hosting details change.
