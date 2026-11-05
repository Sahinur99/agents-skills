# Recommended MCP Servers Configuration

Add these servers to your `~/.gemini/config/mcp_config.json` to enable full browser automation, persistent memory, knowledge graphs, and deep thinking:

```json
{
  "mcpServers": {
    "playwright": {
      "command": "npx",
      "args": ["-y", "@playwright/mcp@latest"],
      "disabled": false
    },
    "memory": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-memory"],
      "disabled": false
    },
    "sequential-thinking": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-sequential-thinking"],
      "disabled": false
    },
    "graphify": {
      "command": "graphify-mcp",
      "disabled": false
    },
    "ecc-memory": {
      "command": "ecc-memory-mcp",
      "env": {
        "ECC_MEMORY_HARNESS": "antigravity"
      },
      "disabled": false
    }
  }
}
```
