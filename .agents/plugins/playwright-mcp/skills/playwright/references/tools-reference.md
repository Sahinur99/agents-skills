# Microsoft Playwright MCP Tool Reference

Detailed specifications for tools provided by `@playwright/mcp`.

## Navigation & Page Control

### `browser_navigate`
- **Description**: Navigates to a specified URL.
- **Parameters**:
  - `url` (string, required): The target URL to open.

### `browser_close`
- **Description**: Closes the active browser page or session.
- **Parameters**: None.

### `browser_reload`
- **Description**: Reloads the current page.
- **Parameters**:
  - `ignoreCache` (boolean, optional): Whether to bypass cache on reload.

### `browser_wait`
- **Description**: Waits for an element or a duration.
- **Parameters**:
  - `time` (number, optional): Milliseconds to wait.
  - `selector` (string, optional): CSS selector to wait for visibility.

---

## Page Inspection & Diagnostics

### `browser_snapshot`
- **Description**: Captures the accessibility tree snapshot of the current DOM.
- **Returns**: Hierarchical YAML/JSON tree of accessible nodes (buttons, inputs, links, headings).

### `browser_take_screenshot`
- **Description**: Takes a PNG screenshot.
- **Parameters**:
  - `fullPage` (boolean, optional): Whether to capture the full scrollable page. Defaults to false.
  - `filename` (string, optional): Destination file path to save screenshot.

### `browser_console_messages`
- **Description**: Retrieves browser console messages.
- **Parameters**:
  - `level` (string, optional): "info" | "warning" | "error".
  - `all` (boolean, optional): Include messages since session start.

### `browser_network_requests`
- **Description**: Returns intercepted network requests.
- **Parameters**:
  - `filter` (string, optional): URL pattern to filter.

---

## User Interactions

### `browser_click`
- **Parameters**:
  - `target` (string, required): Element reference from snapshot or selector.
  - `doubleClick` (boolean, optional): Default false.
  - `button` (string, optional): "left" | "right" | "middle".

### `browser_type`
- **Parameters**:
  - `target` (string, required): Input element.
  - `text` (string, required): Text to type.

### `browser_fill_form`
- **Parameters**:
  - `fields` (array of { target, value }, required): Multiple form fields to populate at once.

### `browser_hover`
- **Parameters**:
  - `target` (string, required): Element to hover over.
