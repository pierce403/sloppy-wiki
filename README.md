# Sloppy Wiki Template 📚

Launch a polished MkDocs + Material wiki by following the exact steps below.
This README is your landing page—start here, then jump into the template with your favorite agentic editor (Cursor, Copilot Workspace, Claude Projects, etc.).

[![Deploy Status](https://github.com/pierce403/sloppy-wiki/actions/workflows/deploy.yml/badge.svg)](https://github.com/pierce403/sloppy-wiki/actions/workflows/deploy.yml)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

## 🧭 Step-by-step launch checklist

**Step 1 — Visit the template on GitHub**

1. Sign into GitHub in your browser.
2. Navigate to `https://github.com/pierce403/sloppy-wiki`.
3. Confirm you see the green **Use this template** button near the top right.

**Step 2 — Create your own copy**

1. Click **Use this template → Create a new repository**.
2. Choose the owner/org, set a descriptive repository name, and keep the default branch (`main`).
3. Leave the “Include all branches” box unchecked unless you know you need it.
4. Click **Create repository** and wait for GitHub to scaffold your copy.

**Step 3 — Clone locally**

```bash
git clone https://github.com/<your-account>/<your-sloppy-wiki>.git
cd <your-sloppy-wiki>
```

Replace placeholders with your repo details or use the SSH URL if that is your preference.

**Step 4 — Open the project with an agentic editor**

1. Launch Cursor (or your preferred AI-enhanced editor).
2. Select **Open Folder…** and point it at the freshly cloned repository.
3. Let the editor index the project so its agent can answer questions about MkDocs, workflows, and scripts in this template.

**Step 5 — Activate the local tooling**

```bash
source activate.sh        # Sets up the Python virtual environment
./serve.sh                # Starts mkdocs serve with Material theme
```

Visit `http://127.0.0.1:8000` to confirm the wiki renders.
Keep the server running so you can preview edits in real time.

**Step 6 — Run the first-time provisioning guide**

Open [`SETUP.md`](SETUP.md) and walk through the provisioning flow (logo, color palette, nav structure, repo secrets, CI verification, etc.).
Capture every decision so future contributors know how the wiki was customized.

## ✨ Why this template?

- 🚀 **Fast onboarding** — Scripts plus SETUP.md get you from template to live docs quickly.
- 🎨 **Material polish** — Light/dark modes, palettes, and branding hooks ready to go.
- ⚙️ **CI/CD baked in** — GitHub Actions builds with `mkdocs build --strict`.
- 📝 **Education-first** — Heavily commented configs and docs for humans + AI agents.
- 🔍 **Searchable** — Built-in client-side search and structured nav examples.
- 📱 **Responsive** — Looks great on desktop, tablet, and mobile.

## 📚 Learn more

- [Full documentation](https://pierce403.github.io/sloppy-wiki) — explore guides, recipes, and customization tips.
- [`SETUP.md`](SETUP.md) — detailed provisioning workflow for your first wiki instance.
- [`AGENTS.md`](AGENTS.md) — how AI assistants should collaborate in this repo.

## 🚢 Deployment flow

Push to `main` → GitHub Actions installs dependencies → `mkdocs build --strict` → deploys to the `gh-pages` branch → GitHub Pages serves your site at `https://<you>.github.io/<repo>`.
See the [deployment guide](https://pierce403.github.io/sloppy-wiki/deployment/github-pages/) for options like custom domains.

## 🛠️ Tech stack

- [MkDocs](https://www.mkdocs.org/)
- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)
- [PyMdown Extensions](https://facelessuser.github.io/pymdown-extensions/)
- [GitHub Actions](https://github.com/features/actions)
- [GitHub Pages](https://pages.github.com/)

## 📄 License

Apache License 2.0 — see [LICENSE](LICENSE).

---

Built with ❤️ by [Pierce](https://github.com/pierce403) and the Sloppy Wiki community.
