# Diagrams

Create visual diagrams using Mermaid syntax directly in your Markdown.

## What is Mermaid?

[Mermaid](https://mermaid.js.org/) is a JavaScript library that generates diagrams from text definitions. It's perfect for documentation because:

- Diagrams are version-controlled as text
- No need for external diagramming tools
- Easy to update and maintain
- Renders beautifully in both light and dark modes

## Flowcharts

Create process flows:

````markdown
```mermaid
flowchart LR
    A[Start] --> B{Is it working?}
    B -->|Yes| C[Great!]
    B -->|No| D[Debug]
    D --> B
    C --> E[End]
```
````

```mermaid
flowchart LR
    A[Start] --> B{Is it working?}
    B -->|Yes| C[Great!]
    B -->|No| D[Debug]
    D --> B
    C --> E[End]
```

### Flowchart Directions

- `LR` - Left to Right
- `RL` - Right to Left
- `TB` - Top to Bottom (default)
- `BT` - Bottom to Top

## Sequence Diagrams

Show interactions between components:

````markdown
```mermaid
sequenceDiagram
    participant User
    participant Browser
    participant Server
    participant Database
    
    User->>Browser: Enter URL
    Browser->>Server: HTTP Request
    Server->>Database: Query Data
    Database-->>Server: Return Results
    Server-->>Browser: HTTP Response
    Browser-->>User: Display Page
```
````

```mermaid
sequenceDiagram
    participant User
    participant Browser
    participant Server
    participant Database
    
    User->>Browser: Enter URL
    Browser->>Server: HTTP Request
    Server->>Database: Query Data
    Database-->>Server: Return Results
    Server-->>Browser: HTTP Response
    Browser-->>User: Display Page
```

## Class Diagrams

Document object-oriented structures:

````markdown
```mermaid
classDiagram
    class Animal {
        +String name
        +int age
        +makeSound()
    }
    
    class Dog {
        +String breed
        +bark()
    }
    
    class Cat {
        +bool indoor
        +meow()
    }
    
    Animal <|-- Dog
    Animal <|-- Cat
```
````

```mermaid
classDiagram
    class Animal {
        +String name
        +int age
        +makeSound()
    }
    
    class Dog {
        +String breed
        +bark()
    }
    
    class Cat {
        +bool indoor
        +meow()
    }
    
    Animal <|-- Dog
    Animal <|-- Cat
```

## State Diagrams

Show state transitions:

````markdown
```mermaid
stateDiagram-v2
    [*] --> Idle
    Idle --> Processing: Start
    Processing --> Success: Complete
    Processing --> Error: Fail
    Success --> [*]
    Error --> Idle: Retry
    Error --> [*]: Abort
```
````

```mermaid
stateDiagram-v2
    [*] --> Idle
    Idle --> Processing: Start
    Processing --> Success: Complete
    Processing --> Error: Fail
    Success --> [*]
    Error --> Idle: Retry
    Error --> [*]: Abort
```

## Entity Relationship Diagrams

Database schema visualization:

````markdown
```mermaid
erDiagram
    USER ||--o{ POST : creates
    USER ||--o{ COMMENT : writes
    POST ||--o{ COMMENT : contains
    
    USER {
        int id PK
        string username
        string email
    }
    
    POST {
        int id PK
        int user_id FK
        string title
        text content
    }
    
    COMMENT {
        int id PK
        int user_id FK
        int post_id FK
        text content
    }
```
````

```mermaid
erDiagram
    USER ||--o{ POST : creates
    USER ||--o{ COMMENT : writes
    POST ||--o{ COMMENT : contains
    
    USER {
        int id PK
        string username
        string email
    }
    
    POST {
        int id PK
        int user_id FK
        string title
        text content
    }
    
    COMMENT {
        int id PK
        int user_id FK
        int post_id FK
        text content
    }
```

## Gantt Charts

Project timelines:

````markdown
```mermaid
gantt
    title Project Schedule
    dateFormat  YYYY-MM-DD
    section Planning
    Requirements    :a1, 2025-01-01, 7d
    Design         :a2, after a1, 10d
    section Development
    Backend        :b1, after a2, 14d
    Frontend       :b2, after a2, 14d
    section Testing
    QA Testing     :c1, after b1, 7d
    Bug Fixes      :c2, after c1, 5d
```
````

```mermaid
gantt
    title Project Schedule
    dateFormat  YYYY-MM-DD
    section Planning
    Requirements    :a1, 2025-01-01, 7d
    Design         :a2, after a1, 10d
    section Development
    Backend        :b1, after a2, 14d
    Frontend       :b2, after a2, 14d
    section Testing
    QA Testing     :c1, after b1, 7d
    Bug Fixes      :c2, after c1, 5d
```

## Pie Charts

Show proportions:

````markdown
```mermaid
pie title Programming Languages Used
    "Python" : 40
    "JavaScript" : 30
    "Rust" : 15
    "Go" : 10
    "Other" : 5
```
````

```mermaid
pie title Programming Languages Used
    "Python" : 40
    "JavaScript" : 30
    "Rust" : 15
    "Go" : 10
    "Other" : 5
```

## Git Graph

Visualize git branches:

````markdown
```mermaid
gitGraph
    commit
    commit
    branch develop
    checkout develop
    commit
    commit
    checkout main
    merge develop
    commit
    branch feature
    checkout feature
    commit
    checkout main
    merge feature
```
````

```mermaid
gitGraph
    commit
    commit
    branch develop
    checkout develop
    commit
    commit
    checkout main
    merge develop
    commit
    branch feature
    checkout feature
    commit
    checkout main
    merge feature
```

## Real-World Examples

### Authentication Flow

```mermaid
sequenceDiagram
    participant U as User
    participant C as Client
    participant A as Auth Server
    participant R as Resource Server
    
    U->>C: Login Request
    C->>A: POST /auth/login
    A->>A: Validate Credentials
    A-->>C: Access Token
    C->>R: GET /api/data<br/>(with token)
    R->>A: Validate Token
    A-->>R: Token Valid
    R-->>C: Protected Data
    C-->>U: Display Data
```

### Deployment Pipeline

```mermaid
flowchart TB
    A[Developer Push] --> B[GitHub]
    B --> C{Tests Pass?}
    C -->|No| D[Notify Developer]
    C -->|Yes| E[Build Image]
    E --> F[Push to Registry]
    F --> G{Production?}
    G -->|No| H[Deploy to Staging]
    G -->|Yes| I[Deploy to Production]
    H --> J[Run Integration Tests]
    J --> K{Tests Pass?}
    K -->|Yes| L[Ready for Prod]
    K -->|No| D
```

### Microservices Architecture

```mermaid
flowchart TB
    Client[Client Application]
    Gateway[API Gateway]
    Auth[Auth Service]
    User[User Service]
    Order[Order Service]
    Payment[Payment Service]
    DB1[(User DB)]
    DB2[(Order DB)]
    Cache[(Redis Cache)]
    
    Client --> Gateway
    Gateway --> Auth
    Gateway --> User
    Gateway --> Order
    Gateway --> Payment
    
    User --> DB1
    User --> Cache
    Order --> DB2
    Order --> Payment
    Payment --> Cache
```

## Configuration

To enable Mermaid diagrams, add to `mkdocs.yml`:

```yaml
markdown_extensions:
  - pymdownx.superfences:
      custom_fences:
        - name: mermaid
          class: mermaid
          format: !!python/name:pymdownx.superfences.fence_code_format
```

## Styling Tips

### Node Shapes

- `[text]` - Rectangle
- `(text)` - Rounded rectangle
- `{text}` - Diamond (decision)
- `((text))` - Circle
- `>text]` - Asymmetric shape
- `[[text]]` - Subroutine

### Arrow Types

- `-->` - Solid arrow
- `-.->` - Dotted arrow
- `==>` - Thick arrow
- `--text-->` - Arrow with label
- `-->|text|` - Alternative label syntax

## Best Practices

!!! tip "Keep It Simple"
    Don't try to show everything in one diagram. Break complex systems into multiple simpler diagrams.

!!! tip "Use Meaningful Labels"
    Use clear, descriptive labels for nodes and connections.

!!! tip "Consider Your Audience"
    Technical diagrams for developers, simple flows for stakeholders.

!!! warning "Browser Rendering"
    Very complex diagrams may render slowly. If performance is an issue, consider splitting the diagram.

## Alternatives

### ASCII Diagrams

For simple diagrams, ASCII art can work:

```
┌─────────┐      ┌─────────┐      ┌─────────┐
│  Start  │─────▶│ Process │─────▶│   End   │
└─────────┘      └─────────┘      └─────────┘
```

### External Tools

For very complex diagrams:

- [Draw.io](https://draw.io) - Full-featured diagramming
- [PlantUML](https://plantuml.com) - Text-to-UML
- [Excalidraw](https://excalidraw.com) - Hand-drawn style

Save as PNG and embed:

```markdown
![Architecture Diagram](../img/architecture.png)
```

## Resources

- [Mermaid Documentation](https://mermaid.js.org/)
- [Mermaid Live Editor](https://mermaid.live/) - Test your diagrams
- [PyMdown Extensions](https://facelessuser.github.io/pymdown-extensions/)

## Next Steps

- [Writing Pages](writing-pages.md) - General content guidelines
- [Code Blocks](code-blocks.md) - Syntax highlighting
- [Markdown Tips](markdown-tips.md) - Advanced features

---

**Visualize your ideas!** 📊

