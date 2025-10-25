# AGENTS.md

This file contains instructions and guidelines for AI agents (like Cursor, Copilot, Claude, etc.) working on this project.

## Project Overview

**Sloppy Wiki** is a template repository for creating documentation wikis using MkDocs and Material theme. The goal is to provide a fully-functional, well-documented starting point that users can fork and customize for their own documentation needs.

## Core Principles

1. **Learn by Example**: Every file should be well-commented and self-documenting
2. **Keep It Simple**: Prefer clarity over cleverness
3. **Template First**: Remember this is a template - make it easy to customize
4. **Best Practices**: Follow MkDocs and Material theme conventions

## First-time setup protocol

AI agents must proactively check whether the user is provisioning their wiki for the first time.

1. **Ask early**: “Are you setting up your wiki from this template for the first time?” If yes (or unclear), switch into onboarding mode.
2. **Follow `SETUP.md`**: Use the new provisioning guide as your canonical checklist. Quote the relevant step so the user knows where they are in the process.
3. **Gather branding inputs**: Explicitly ask for the site name, tagline, logo asset (SVG/PNG + desired path), favicon, primary HEX color, accent HEX color, preferred default mode, and any custom domain requirements.
4. **Document decisions**: Fill out (or prompt the user to fill out) the decision log table at the bottom of `SETUP.md`.
5. **Walk through actions**:
   - Copy logos into `docs/img/` and update `mkdocs.yml` (`site_name`, `site_description`, `theme.logo`, `palette`, etc.).
   - Help the user edit `docs/index.md` and `nav:` entries so navigation matches their plan.
   - Ensure they run `source activate.sh`, `./serve.sh`, and `./build.sh` during the session.
6. **Confirm completion**: Repeat the remaining steps from `SETUP.md` (deployment, QA, commit workflow) so the user knows they finished first-time setup.
7. **Always commit and push**: After testing, `git add .`, `git commit`, and `git push` (per README workflow). Do not leave uncommitted work when you finish assisting the user.

## Development Workflow

### Before Making Changes

1. **Understand the Template Nature**: This is a template repo, not a specific project. Keep examples generic and educational.
2. **Check TODO.md**: See if your planned changes align with project goals
3. **Read Existing Code**: Maintain consistent style and patterns

### Making Changes

1. **Test Locally First**: Always run `./serve.sh` to test changes locally
2. **Build Before Commit**: Run `./build.sh` to ensure the site builds successfully
3. **Check for Errors**: Fix any warnings or errors from the build process
4. **Verify Links**: Ensure all internal links work correctly

### Commit Workflow (IMPORTANT)

**ALWAYS follow this sequence:**

```bash
# 1. Make your changes
# Edit files as needed

# 2. Test the build
./build.sh

# 3. If build succeeds, stage your changes
git add .

# 4. Commit with descriptive message
git commit -m "Description of changes"

# 5. Push to repository
git push
```

**NEVER commit without testing the build first!** A broken build means users can't deploy their wikis.

### Automated Testing

This repository includes GitHub Actions workflows that:

- Test the build on every push
- Deploy to GitHub Pages on successful builds
- Validate that AGENTS.md changes don't break the build

## File Structure Guidelines

### Configuration Files

- **mkdocs.yml**: Heavily commented. Explain every option for educational purposes.
- **requirements.txt**: Pin major versions but allow minor updates
- **Shell scripts**: Include helpful echo messages and error handling

### Documentation Files

- **docs/index.md**: The homepage - keep it welcoming and clear
- **docs/\*\*/\*.md**: All content should demonstrate best practices
- **docs/css/custom-styles.css**: Comment all custom styles
- **docs/img/**: Provide .gitkeep and instructions for users

### Meta Files

- **README.md**: Quick start focused, links to full docs
- **TODO.md**: Keep updated with planned features
- **AGENTS.md**: This file - keep it current with project evolution

## Content Guidelines

### Writing Documentation

- Use clear, simple language
- Include code examples for technical concepts
- Use admonitions (notes, warnings, tips) appropriately
- Add breadcrumb context (tell readers where they are)

### Code Examples

```markdown
# Good: Shows context and explanation
```python
# This function processes user input
def process_input(data):
    return data.strip().lower()
```

# Bad: No context
```python
def pi(d):
    return d.strip().lower()
```
```

### Markdown Style

- Use ATX headers (#, ##, ###)
- One sentence per line in source (easier git diffs)
- Blank line before and after code blocks
- Use relative links for internal pages

## Common Tasks

### Adding a New Documentation Page

1. Create the `.md` file in appropriate `docs/` subdirectory
2. Add entry to `nav:` section in `mkdocs.yml`
3. Test with `./serve.sh`
4. Build with `./build.sh`
5. Commit following the workflow above

### Updating Configuration

1. Edit `mkdocs.yml` with clear comments
2. Test locally - MkDocs will reload automatically
3. Build to catch any issues
4. Update relevant documentation if needed
5. Commit following the workflow above

### Modifying Styles

1. Edit `docs/css/custom-styles.css`
2. Test in both light and dark modes
3. Check mobile responsiveness
4. Document complex selectors with comments
5. Commit following the workflow above

## Testing Checklist

Before committing, verify:

- [ ] `./build.sh` runs without errors
- [ ] `./serve.sh` shows changes correctly
- [ ] All links work (no 404s)
- [ ] Images load properly
- [ ] Dark mode looks good
- [ ] Mobile view is responsive
- [ ] Navigation structure is logical
- [ ] Search functionality works

## Deployment Notes

### GitHub Pages Setup

The repository uses GitHub Actions to automatically deploy to GitHub Pages. The workflow:

1. Triggers on push to `main` branch
2. Installs Python and dependencies
3. Runs `mkdocs build --strict` (fails on warnings)
4. Deploys to `gh-pages` branch
5. GitHub Pages serves from `gh-pages`

### Custom Domain (Optional)

Users can add a `CNAME` file to `docs/` directory with their domain name.

## Troubleshooting Common Issues

### Build Fails

- Check mkdocs.yml syntax (YAML is whitespace-sensitive)
- Verify all files referenced in nav: exist
- Check for broken links in markdown
- Ensure requirements.txt packages are compatible

### Deployment Fails

- Verify GitHub Pages is enabled in repo settings
- Check Actions tab for error messages
- Ensure deploy.yml has correct permissions
- Confirm GITHUB_TOKEN has necessary access

### Local Server Issues

- Make sure virtual environment is activated
- Reinstall dependencies: `pip install -r requirements.txt`
- Check port 8000 isn't already in use
- Try `mkdocs serve --clean`

## Version Updates

When updating dependencies:

1. Test thoroughly with new versions
2. Update requirements.txt
3. Note any breaking changes in comments
4. Update documentation if behavior changes
5. Test deployment workflow

## Best Practices for AI Agents

### DO:
- ✅ Explain your changes clearly in commit messages
- ✅ Test builds before committing
- ✅ Maintain consistent formatting and style
- ✅ Update TODO.md when completing tasks
- ✅ Add comments to explain complex configurations
- ✅ Think about the end user (someone forking this template)

### DON'T:
- ❌ Commit without testing the build
- ❌ Make changes to .git config
- ❌ Add user-specific files (like IDE settings)
- ❌ Remove educational comments
- ❌ Use force push
- ❌ Commit directly to main without testing

## Questions?

If you're an AI agent and unsure about something:

1. Check existing patterns in the codebase
2. Prioritize clarity and simplicity
3. When in doubt, add a comment explaining your choice
4. Remember: this is a teaching template

---

**Last Updated**: 2025-10-25
**Maintained By**: AI Agents + Human Contributors
**Build Status**: Should always be passing ✓
