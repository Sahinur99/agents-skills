---
name: playwright
description: Browser automation, end-to-end web testing, UI verification, accessibility snapshot inspection, and web scraping using Microsoft Playwright MCP. Use this skill whenever the user asks to test a website, interact with a browser, fill forms, verify frontend pages, take screenshots, or debug web application behavior.
---

# Microsoft Playwright MCP Skill

This skill enables real-browser automation and web diagnostics via the **Microsoft Playwright Model Context Protocol (MCP)** server.

Unlike fragile pixel-only automation, Playwright MCP interacts with web pages using structured accessibility snapshots, providing deterministic, fast, and token-efficient interactions.

---

## When to Use This Skill

Activate this skill when:
- **Verifying Web Pages**: Testing local dev servers (e.g., `http://localhost:3000`) or production URLs.
- **End-to-End Testing**: Clicking buttons, filling inputs, submitting forms, and asserting expected DOM changes.
- **Visual Diagnostics**: Capturing full-page or element screenshots to verify responsive design and rendering.
- **Console & Network Inspection**: Checking JavaScript runtime errors, console logs, and failed HTTP requests.
- **Web Scraping & Data Extraction**: Reading dynamic, JavaScript-rendered web content reliably.

---

## Core Tool Suite

The `@playwright/mcp` server exposes the following MCP tools:

### 1. Navigation & State
- **`browser_navigate`**: Navigate to any URL (`url`).
- **`browser_reload`**: Reload the current page.
- **`browser_close`**: Terminate the browser session.
- **`browser_wait`**: Wait for a selector, network idle, or fixed duration (`time` or `selector`).

### 2. Inspection & Snapshots
- **`browser_snapshot`**: Returns the structured accessibility tree of the page. This is the primary way to discover interactive elements and their roles without loading full HTML.
- **`browser_take_screenshot`**: Captures a PNG screenshot of the viewport or entire scrollable page.
- **`browser_console_messages`**: Returns console logs (`info`, `warning`, `error`).
- **`browser_network_requests`**: Inspects network requests and response status codes.

### 3. Interaction
- **`browser_click`**: Clicks a target element specified by accessibility reference or selector.
- **`browser_type`** / **`browser_fill_form`**: Types text into input fields.
- **`browser_hover`**: Moves mouse over an element to trigger hover states or dropdowns.
- **`browser_select_option`**: Selects options in `<select>` elements.
- **`browser_press_key`**: Dispatches keyboard keys (e.g., `Enter`, `Tab`, `Escape`).
- **`browser_drag`** / **`browser_drop`**: Performs drag and drop between elements or file drops.

---

## Recommended Automation Workflow

### Step 1: Navigate to the Page
Open the target URL:
```json
{
  "url": "http://localhost:3000"
}
```

### Step 2: Take an Accessibility Snapshot
Always call `browser_snapshot` first to inspect available elements:
```json
{}
```
*The snapshot provides unambiguous element identifiers and roles (e.g., button "Buy", link "Tech Specs", input "Email").*

### Step 3: Perform Interactions
Target elements identified from the snapshot:
```json
{
  "target": "button[name='Enter Portal']"
}
```

### Step 4: Verify with Screenshots & Console Logs
Verify UI changes and ensure zero runtime errors:
- Call `browser_take_screenshot` to confirm visual layout.
- Call `browser_console_messages` with `level: "error"` to assert no uncaught exceptions occurred.

---

## Direct CLI Usage

You can also run Playwright directly via npm / npx:
```bash
# Run headless browser automation test
npx playwright test

# Launch interactive code generator
npx playwright codegen http://localhost:3000
```
