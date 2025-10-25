# Writing Pages

Learn how to write great documentation using Markdown in MkDocs.

## Markdown Basics

### Headers

```markdown
# H1 - Page Title
## H2 - Main Section
### H3 - Subsection
#### H4 - Sub-subsection
```

!!! tip "Header Best Practices"
    - Use only one H1 per page (the page title)
    - Don't skip header levels (don't go from H2 to H4)
    - Keep headers descriptive and scannable

### Paragraphs and Line Breaks

```markdown
This is a paragraph. Just write normally with a blank line between paragraphs.

This is a new paragraph. To create a line break within a paragraph,  
add two spaces at the end of the line.
```

### Emphasis

```markdown
*italic text* or _italic text_
**bold text** or __bold text__
***bold and italic***
~~strikethrough~~
`inline code`
```

*italic text*, **bold text**, ***bold and italic***, ~~strikethrough~~, `inline code`

### Lists

**Unordered lists:**

```markdown
- Item 1
- Item 2
  - Nested item 2.1
  - Nested item 2.2
- Item 3
```

**Ordered lists:**

```markdown
1. First item
2. Second item
3. Third item
   1. Nested item
   2. Another nested item
```

**Task lists:**

```markdown
- [x] Completed task
- [ ] Incomplete task
- [ ] Another task
```

- [x] Completed task
- [ ] Incomplete task
- [ ] Another task

### Links

```markdown
[Link text](https://example.com)
[Internal link](../getting-started/quick-start.md)
[Link with title](https://example.com "Hover text")
```

[Example link](https://example.com), [Internal link](../getting-started/quick-start.md)

### Images

```markdown
![Alt text](../img/screenshot.png)
![Image with title](../img/logo.png "Logo")
```

Images can be:
- **Relative paths**: `../img/image.png`
- **Absolute paths**: `/img/image.png`
- **External URLs**: `https://example.com/image.png`

### Code Blocks

Basic code block:

````markdown
```python
def hello_world():
    print("Hello, World!")
```
````

With line numbers:

````markdown
```python linenums="1"
def factorial(n):
    if n == 0:
        return 1
    return n * factorial(n-1)
```
````

Highlight specific lines:

````markdown
```python hl_lines="2 3"
def example():
    important_line = True  # This line is highlighted
    another_one = 42       # This too
    return important_line
```
````

### Blockquotes

```markdown
> This is a blockquote.
> 
> It can span multiple lines.

> Nested quotes
>> Go deeper
>>> And deeper
```

> This is a blockquote.
> 
> It can span multiple lines.

### Horizontal Rules

```markdown
---
```

---

### Tables

```markdown
| Column 1 | Column 2 | Column 3 |
|----------|----------|----------|
| Row 1    | Data     | More     |
| Row 2    | Data     | More     |
```

| Column 1 | Column 2 | Column 3 |
|----------|----------|----------|
| Row 1    | Data     | More     |
| Row 2    | Data     | More     |

**Alignment:**

```markdown
| Left | Center | Right |
|:-----|:------:|------:|
| L    |   C    |     R |
```

| Left | Center | Right |
|:-----|:------:|------:|
| L    |   C    |     R |

## Admonitions (Callout Boxes)

Create eye-catching callouts:

```markdown
!!! note
    This is a note.

!!! tip "Custom Title"
    This tip has a custom title!

!!! warning
    Be careful here!

!!! danger "Critical Warning"
    This is dangerous!

!!! info
    Additional information.

!!! success
    Operation completed successfully!
```

!!! note
    This is a note.

!!! tip "Custom Title"
    This tip has a custom title!

!!! warning
    Be careful here!

### Collapsible Admonitions

```markdown
??? note "Click to expand"
    This content is hidden by default.

???+ tip "Expanded by default"
    This starts expanded.
```

??? note "Click to expand"
    This content is hidden by default.

## Page Metadata

Add metadata at the top of any page:

```markdown
---
title: Custom Page Title
description: This appears in search results
hide:
  - navigation
  - toc
---

# Page Content
```

Metadata options:
- `title`: Override page title
- `description`: SEO description
- `hide`: Hide navigation or table of contents
- `template`: Use custom template

## Internal Links

### Linking to Pages

```markdown
[Quick Start Guide](../getting-started/quick-start.md)
[About](../about.md)
```

### Linking to Headers

```markdown
[Jump to Admonitions](#admonitions-callout-boxes)
[Configuration Guide](../getting-started/configuration.md#basic-configuration)
```

### Automatic Reference Links

```markdown
Check out [Quick Start] for getting started.

[Quick Start]: ../getting-started/quick-start.md
```

## Organizing Content

### Directory Structure

```
docs/
├── index.md                    # Homepage
├── getting-started/
│   ├── index.md               # Section overview
│   ├── installation.md
│   └── quick-start.md
├── tutorials/
│   ├── beginner/
│   │   └── first-tutorial.md
│   └── advanced/
│       └── advanced-topic.md
└── reference/
    └── api.md
```

### Section Index Pages

Create `index.md` in each section:

```markdown
# Getting Started

Welcome to the getting started guide!

## Contents

- [Installation](installation.md)
- [Quick Start](quick-start.md)
- [Configuration](configuration.md)
```

## Content Best Practices

### 1. Start with a Clear Title

```markdown
# Installing PostgreSQL on Ubuntu

This guide walks you through installing and configuring PostgreSQL 15 
on Ubuntu 22.04 LTS.
```

### 2. Use an Introduction Paragraph

Tell readers what they'll learn:

```markdown
In this tutorial, you'll learn how to:

- Install PostgreSQL from official repositories
- Configure basic security settings
- Create your first database
- Set up automatic backups
```

### 3. Break Content into Sections

```markdown
## Prerequisites

Before you begin, ensure you have:
- Ubuntu 22.04 LTS
- Sudo privileges
- 2GB available disk space

## Step 1: Update Package Lists

First, update your package lists...
```

### 4. Use Visual Hierarchy

```markdown
## Main Topic

### Subtopic

Regular paragraph text.

#### Detail Level

More specific information.
```

### 5. Add Examples

Show, don't just tell:

```markdown
## Creating a User

To create a new user:

```bash
sudo adduser johndoe
```

You'll see output like:

```
Adding user `johndoe' ...
Adding new group `johndoe' (1001) ...
Adding new user `johndoe' (1001) with group `johndoe' ...
```
```

### 6. Include Screenshots

```markdown
After clicking "Submit", you should see:

![Success message](../img/success-screenshot.png)
```

### 7. Link to Related Content

```markdown
!!! info "Related Reading"
    - [Configuration Guide](../getting-started/configuration.md)
    - [Advanced Topics](../advanced/overview.md)
```

### 8. Provide Next Steps

```markdown
## Next Steps

Now that you've completed installation:

1. [Configure your database](configuration.md)
2. [Create your first schema](first-schema.md)
3. [Learn backup strategies](backups.md)
```

## Writing Style Tips

### Keep It Simple

```markdown
❌ Utilize the configuration file to modify parameters
✅ Edit the config file to change settings
```

### Be Specific

```markdown
❌ Update the file
✅ Edit mkdocs.yml and change the site_name
```

### Use Active Voice

```markdown
❌ The configuration can be changed by editing the file
✅ Edit the file to change the configuration
```

### Address the Reader

```markdown
❌ One should run the command
✅ Run the command: ./build.sh
```

## Common Patterns

### Command Line Instructions

```markdown
Open a terminal and run:

```bash
cd /path/to/project
./serve.sh
```

You should see output like:

```
INFO    -  Building documentation...
INFO    -  Serving on http://127.0.0.1:8000
```
```

### Step-by-Step Tutorials

```markdown
## Step 1: Install Dependencies

Install the required packages:

```bash
pip install -r requirements.txt
```

## Step 2: Configure Settings

Edit `config.yml` and set your API key:

```yaml
api_key: your_key_here
```

## Step 3: Test the Setup

Run the test command:

```bash
python test.py
```
```

### API Documentation

```markdown
## authenticate()

Authenticates a user with username and password.

**Parameters:**

- `username` (str): User's username
- `password` (str): User's password

**Returns:**

- `token` (str): Authentication token

**Example:**

```python
token = authenticate("user@example.com", "secret123")
print(f"Token: {token}")
```
```

### Troubleshooting Sections

```markdown
## Troubleshooting

### "Permission Denied" Error

If you see:

```
Error: Permission denied
```

**Solution:** Run the command with sudo:

```bash
sudo ./install.sh
```

### Port Already in Use

**Problem:** Port 8000 is already in use.

**Solution:** Use a different port:

```bash
mkdocs serve -a 127.0.0.1:8001
```
```

## Page Templates

### Tutorial Template

```markdown
# Tutorial Title

Brief introduction explaining what this tutorial covers.

**Time required:** 15 minutes  
**Difficulty:** Beginner

## What You'll Learn

- Skill 1
- Skill 2
- Skill 3

## Prerequisites

- Requirement 1
- Requirement 2

## Step 1: [Action]

Instructions...

## Step 2: [Action]

Instructions...

## Conclusion

Summary of what was learned.

## Next Steps

- Related tutorial 1
- Related tutorial 2
```

### Reference Page Template

```markdown
# Component Name

Brief description of the component.

## Overview

Detailed explanation...

## Properties

| Property | Type | Default | Description |
|----------|------|---------|-------------|
| name     | str  | None    | User's name |
| age      | int  | 0       | User's age  |

## Methods

### method_name()

Description of what the method does.

## Examples

```python
# Example usage
```

## See Also

- Related component 1
- Related component 2
```

## Next Steps

- [Markdown Tips](markdown-tips.md) - Advanced Markdown features
- [Code Blocks](code-blocks.md) - Syntax highlighting and more
- [Diagrams](diagrams.md) - Add visual diagrams

---

**Happy writing!** ✍️

