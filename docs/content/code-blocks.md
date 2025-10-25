# Code Blocks

Master code syntax highlighting and advanced code features in MkDocs.

## Basic Syntax Highlighting

Specify the language after the opening backticks:

````markdown
```python
def greet(name):
    return f"Hello, {name}!"
```
````

```python
def greet(name):
    return f"Hello, {name}!"
```

## Supported Languages

Common languages supported:

- **Python**: `python`, `py`
- **JavaScript**: `javascript`, `js`
- **TypeScript**: `typescript`, `ts`
- **Bash/Shell**: `bash`, `sh`, `shell`
- **YAML**: `yaml`, `yml`
- **JSON**: `json`
- **HTML**: `html`
- **CSS**: `css`
- **Markdown**: `markdown`, `md`
- **SQL**: `sql`
- **Rust**: `rust`, `rs`
- **Go**: `go`
- **Java**: `java`
- **C/C++**: `c`, `cpp`
- **Ruby**: `ruby`, `rb`
- **PHP**: `php`

[Full list of supported languages](https://pygments.org/languages/)

## Line Numbers

Add line numbers with `linenums`:

````markdown
```python linenums="1"
def factorial(n):
    if n == 0:
        return 1
    return n * factorial(n-1)
```
````

```python linenums="1"
def factorial(n):
    if n == 0:
        return 1
    return n * factorial(n-1)
```

Start numbering from a specific line:

````markdown
```python linenums="42"
def meaning_of_life():
    return 42
```
````

## Highlighting Lines

Highlight specific lines with `hl_lines`:

````markdown
```python hl_lines="2 3"
def example():
    important = True    # Highlighted
    critical = "data"   # Highlighted
    return important
```
````

```python hl_lines="2 3"
def example():
    important = True    # Highlighted
    critical = "data"   # Highlighted
    return important
```

Highlight ranges:

````markdown
```python hl_lines="1-2 5-7"
# Lines 1-2 highlighted
print("Start")

# Lines 5-7 highlighted
if True:
    print("Middle")
    print("End")
```
````

## Code Block Titles

Add titles to code blocks:

````markdown
```python title="fibonacci.py"
def fib(n):
    a, b = 0, 1
    for _ in range(n):
        a, b = b, a + b
    return a
```
````

```python title="fibonacci.py"
def fib(n):
    a, b = 0, 1
    for _ in range(n):
        a, b = b, a + b
    return a
```

## Inline Code with Syntax Highlighting

````markdown
The `#!python print()` function outputs text.
Use `#!bash ls -la` to list files.
Call `#!javascript console.log()` in JS.
````

The `#!python print()` function outputs text.  
Use `#!bash ls -la` to list files.

## Copy Button

Code blocks automatically get a copy button in the top-right corner. Users can click it to copy the code.

## Annotations in Code

Add clickable annotations:

````markdown
```yaml
theme:
  features:
    - content.code.annotate  # (1)

# (1) Enable code annotations
```
````

## Complete Example

Combining features:

````markdown
```python title="app.py" linenums="1" hl_lines="3-5"
import os
from flask import Flask

app = Flask(__name__)  # Create Flask app
app.config['DEBUG'] = True  # Enable debug mode

@app.route('/')
def hello():
    """Home page route."""
    return "Hello, World!"

if __name__ == '__main__':
    app.run()
```
````

```python title="app.py" linenums="1" hl_lines="3-5"
import os
from flask import Flask

app = Flask(__name__)  # Create Flask app
app.config['DEBUG'] = True  # Enable debug mode

@app.route('/')
def hello():
    """Home page route."""
    return "Hello, World!"

if __name__ == '__main__':
    app.run()
```

## Configuration File Examples

### YAML

```yaml
site_name: My Wiki
theme:
  name: material
  palette:
    primary: indigo
    accent: cyan
```

### JSON

```json
{
  "name": "my-project",
  "version": "1.0.0",
  "dependencies": {
    "mkdocs": "^1.5.0"
  }
}
```

### TOML

```toml
[project]
name = "my-project"
version = "1.0.0"

[dependencies]
mkdocs = "^1.5.0"
```

## Shell Commands

Show terminal commands and output:

```bash
$ cd my-project
$ source activate.sh
Installing dependencies...
✓ Done!

$ ./serve.sh
INFO - Serving on http://127.0.0.1:8000
```

## Diff Format

Show code changes:

```diff
def greet(name):
-    return "Hello " + name
+    return f"Hello, {name}!"
```

## Multi-File Examples

Show related files together:

=== "Python"

    ```python title="main.py"
    from config import settings
    
    def main():
        print(settings.APP_NAME)
    
    if __name__ == '__main__':
        main()
    ```

=== "Config"

    ```python title="config.py"
    class Settings:
        APP_NAME = "My Application"
        DEBUG = True
    
    settings = Settings()
    ```

=== "Requirements"

    ```txt title="requirements.txt"
    mkdocs>=1.5.3
    mkdocs-material>=9.5.3
    ```

## Language-Specific Examples

### Python

```python
from typing import List, Dict, Optional

def process_data(items: List[Dict[str, any]]) -> Optional[str]:
    """Process a list of data items.
    
    Args:
        items: List of dictionaries to process
        
    Returns:
        Processed result or None if empty
    """
    if not items:
        return None
    
    result = [item['name'] for item in items if 'name' in item]
    return ', '.join(result)
```

### JavaScript

```javascript
/**
 * Fetch user data from API
 * @param {number} userId - The user's ID
 * @returns {Promise<Object>} User data object
 */
async function getUserData(userId) {
  try {
    const response = await fetch(`/api/users/${userId}`);
    const data = await response.json();
    return data;
  } catch (error) {
    console.error('Error fetching user:', error);
    throw error;
  }
}
```

### Rust

```rust
use std::collections::HashMap;

fn count_words(text: &str) -> HashMap<String, usize> {
    let mut counts = HashMap::new();
    
    for word in text.split_whitespace() {
        *counts.entry(word.to_lowercase()).or_insert(0) += 1;
    }
    
    counts
}

fn main() {
    let text = "hello world hello";
    let counts = count_words(text);
    println!("{:?}", counts);
}
```

### SQL

```sql
-- Create users table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data
INSERT INTO users (username, email) VALUES
    ('alice', 'alice@example.com'),
    ('bob', 'bob@example.com');

-- Query with join
SELECT u.username, COUNT(p.id) as post_count
FROM users u
LEFT JOIN posts p ON u.id = p.user_id
GROUP BY u.id, u.username
HAVING COUNT(p.id) > 5;
```

## Best Practices

### DO ✅

**Add context:**

```python
# Good: Includes description
# Calculate the factorial of a number recursively
def factorial(n):
    if n == 0:
        return 1
    return n * factorial(n-1)
```

**Highlight important lines:**

````markdown
```python hl_lines="4"
def validate_email(email):
    import re
    pattern = r'^[\w\.-]+@[\w\.-]+\.\w+$'
    return re.match(pattern, email) is not None  # Key validation line
```
````

**Use appropriate titles:**

````markdown
```python title="utils/validators.py"
def is_valid_email(email):
    return '@' in email
```
````

### DON'T ❌

**Don't skip language specifiers:**

````markdown
```
# Bad: No syntax highlighting
def example():
    pass
```
````

**Don't use screenshots of code:**

❌ Taking screenshots of code  
✅ Using actual code blocks with syntax highlighting

**Don't make code blocks too long:**

If a file is > 50 lines, consider:
- Showing only relevant sections
- Breaking into multiple examples
- Linking to the full file in a repository

## Troubleshooting

### No Syntax Highlighting

Make sure you have the extension enabled:

```yaml
markdown_extensions:
  - pymdownx.highlight:
      linenums: true
  - pymdownx.superfences
```

### Wrong Colors

Verify the language identifier is correct:

```markdown
```python  # Correct
```py      # Also works
```pyton   # Wrong - typo!
```

### Line Numbers Not Showing

Enable line numbers globally or per block:

```yaml
markdown_extensions:
  - pymdownx.highlight:
      linenums: true  # Enable globally
```

Or per block: `linenums="1"`

## Next Steps

- [Diagrams](diagrams.md) - Add visual diagrams to your docs
- [Writing Pages](writing-pages.md) - General writing guide
- [Markdown Tips](markdown-tips.md) - More advanced features

---

**Code beautifully!** 💻

