<div align="center">
    <h1>Brief</h1>
    <h3><em>Context-First Development</em></h3>
</div>

<p align="center">
    <strong>Stop coding blind. Brief ensures your AI agent always checks project context before taking action.</strong>
</p>

<p align="center">
    <a href="https://www.npmjs.com/package/brief-mcp"><img src="https://img.shields.io/npm/v/brief-mcp" alt="npm version"/></a>
    <a href="https://github.com/marlowetal653/briefkit/blob/main/LICENSE"><img src="https://img.shields.io/github/license/marlowetal653/briefkit" alt="License"/></a>
</p>

---

## The Problem

AI coding agents often work "blind":
- They reinvent the wheel
- They violate existing patterns
- They forget business rules
- They create inconsistent code

## The Solution

**Brief** forces your AI agent to **understand before acting**.

Before ANY significant action, the agent queries your knowledge base for:
- Business rules and requirements
- Code patterns and conventions
- Architecture decisions
- Domain knowledge
- Technical constraints

---

## Quick Start

### 1. Install Brief CLI

```bash
# Persistent installation (recommended)
uv tool install brief-cli --from git+https://github.com/marlowetal653/briefkit.git

# Or one-time usage
uvx --from git+https://github.com/marlowetal653/briefkit.git brief init .
```

### 2. Initialize your project

```bash
# New project
brief init my-project --ai claude

# Existing project
brief init . --ai claude
```

### 3. Configure Brief MCP

Add to your MCP config file:

**Claude Code**: `~/.claude.json` or project `.mcp.json`

```json
{
  "mcpServers": {
    "brief-mcp": {
      "command": "npx",
      "args": ["-y", "brief-mcp", "--access-token", "YOUR_TOKEN"]
    }
  }
}
```

### 4. Start developing

```bash
# Always check context first
/brief.context I need to implement user authentication

# Then proceed with spec-driven workflow
/brief.specify Build a user authentication system
/brief.plan Using JWT tokens with refresh mechanism
/brief.tasks
/brief.implement
```

---

## How It Works

```
1. You: "Add a payment feature"

2. Agent queries brief-mcp:
   - "Do we have existing payment code?"
   - "What are the business rules for payments?"
   - "Are there security constraints?"

3. Agent receives context from knowledge base

4. Agent implements WITH context
   - Follows existing patterns
   - Respects business rules
   - Maintains consistency
```

---

## MCP Tools

Brief MCP exposes 4 tools to your AI agent:

| Tool | Description |
|------|-------------|
| `search-context` | Search knowledge base with AI-powered answers |
| `add-knowledge` | Add documents to knowledge base |
| `list-knowledge` | List all documents |
| `delete-knowledge` | Remove documents |

---

## Commands

### Core Commands

| Command | Description |
|---------|-------------|
| `/brief.context` | Check context before any action (DO THIS FIRST) |
| `/brief.constitution` | Create project principles |
| `/brief.specify` | Define what to build |
| `/brief.plan` | Create technical plan |
| `/brief.tasks` | Break down into tasks |
| `/brief.implement` | Execute implementation |

### Optional Commands

| Command | Description |
|---------|-------------|
| `/brief.clarify` | Clarify requirements |
| `/brief.analyze` | Cross-artifact analysis |
| `/brief.checklist` | Generate quality checklists |

---

## CLI Reference

### Commands

```bash
brief init <project-name>   # Initialize new project
brief init .                # Initialize in current directory
brief init --here           # Same as above
brief check                 # Check installed tools
brief version               # Show version info
```

### Options

| Option | Description |
|--------|-------------|
| `--ai` | AI assistant: `claude`, `cursor-agent`, `copilot`, `gemini`, etc. |
| `--script` | Script type: `sh` or `ps` |
| `--force` | Skip confirmation for non-empty directories |
| `--no-git` | Skip git initialization |
| `--ignore-agent-tools` | Skip AI tool checks |

---

## Supported AI Agents

| Agent | Support |
|-------|---------|
| Claude Code | Full |
| Cursor | Full |
| GitHub Copilot | Full |
| Gemini CLI | Full |
| Windsurf | Full |
| Amazon Q | Partial |
| + 10 more... | Full |

---

## Project Structure

After `brief init`, your project contains:

```
.specify/
├── memory/
│   └── constitution.md      # Project principles
├── specs/
│   └── [features]/          # Feature specs
├── templates/
│   ├── commands/
│   │   ├── brief.context.md # Context check command
│   │   └── ...
│   └── brief-rule.md        # Context-first rule
└── scripts/

.claude/ (or .cursor/, etc.)
└── commands/                # Agent-specific commands

CLAUDE.md                    # Brief rule for Claude
```

---

## The Brief Rule

Every project includes `CLAUDE.md` with the **Brief Rule**:

> **Before ANY significant action, query brief-mcp for context.**

This ensures your AI agent:
1. Checks the knowledge base first
2. Understands existing patterns
3. Respects business rules
4. Maintains code consistency

---

## Adding Knowledge

Build your knowledge base over time:

```
# Via MCP tool
brief-mcp/add-knowledge: "Our API uses REST with JSON responses..."

# Or via the backend API
POST /documents
{
  "content": "Payment processing requires PCI compliance...",
  "title": "Payment Rules"
}
```

The more context you add, the smarter your AI agent becomes.

---

## Credits

- Based on [GitHub Brief](https://github.com/github/brief)
- Built for Paris Innov Hackathon

## License

MIT - See [LICENSE](./LICENSE)
