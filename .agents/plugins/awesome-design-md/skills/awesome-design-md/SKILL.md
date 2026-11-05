---
name: awesome-design-md
description: Curated DESIGN.md design systems and styling guidelines modeled after 84+ top brands and websites (such as Linear, Vercel, Stripe, Apple, Notion, Supabase, Tailwind, etc.) for UI generation, frontend web development, and visual styling. Use this skill whenever the user wants to design, style, or build a website, dashboard, or UI component, or asks to adopt a specific aesthetic or design system.
---

# Awesome DESIGN.md Skill

This skill equips the agent with 84+ real-world design systems extracted from leading tech companies, developer platforms, and iconic brands.

A **`DESIGN.md`** file is a plain-text design system document (introduced by Google Stitch) that defines visual constraints, design tokens, color palettes, typography scales, spacing systems, and component patterns.

---

## When to Use This Skill

Activate this skill when:
- Designing or building any frontend UI (landing page, dashboard, modal, form, portfolio, mobile-responsive page).
- The user requests a specific brand aesthetic (e.g., *"Make it look like Linear"*, *"Give it a Stripe vibe"*, *"Use Apple's design style"*, *"Dark mode like Vercel or Supabase"*).
- The user asks for help choosing or applying a design system for their project.
- Scaffolding Tailwind CSS configs, CSS variables, or component libraries matching a proven aesthetic.

---

## Brand Catalog by Category

All design systems are located in `references/design-md/<brand>/DESIGN.md`.

### 1. Developer Tools & Code Editors
- **`linear.app`**: Ultra-minimal, dense, software-craft documentation, deep dark surface (`#010102`), signature lavender-blue accent (`#5e6ad2`).
- **`vercel`**: Monochrome precision, pure black and stark white, Geist typography, geometric minimalism.
- **`cursor`**: Sleek dark IDE theme, code-centric hierarchy, gradient accents.
- **`raycast`**: Sleek dark chrome, vibrant macOS launcher accents, pill tags, rich contrast.
- **`warp`**: Modern terminal aesthetic, block-based UI containers, developer monospace details.
- **`expo`**: React Native ecosystem style, tight letter-spacing, code-first surfaces.
- **`lovable`**: Friendly full-stack AI builder aesthetic, playful gradients, high contrast dark surfaces.
- **`superhuman`**: Ultra-premium email client, keyboard-first density, dark surfaces with soft purple glow.

### 2. Backend, Database & Infrastructure
- **`supabase`**: Developer-first dark emerald theme (`#3ecf8e`), terminal-inspired syntax blocks, clean lines.
- **`resend`**: Email API minimalism, stark black/white palette, monospace eyebrows, crisp micro-borders.
- **`mongodb`**: Developer documentation focus, green leaf brand accents (`#00ed64`), slate backgrounds.
- **`clickhouse`**: Analytics database, technical documentation style, high-visibility yellow highlights.
- **`hashicorp`**: Enterprise infrastructure clean, structured black and white with subtle grey scales.
- **`posthog`**: Playful developer analytics, high-contrast dark mode, distinctive hedgehog styling.
- **`sentry`**: Data-dense observability dashboard, error telemetry panels, vivid pink-purple signals.
- **`sanity`**: Dark-first editorial marketing canvas, monumental display typography, single coral-red action CTA.

### 3. AI & Frontier Labs
- **`claude`**: Anthropic's editorial warmth, terracotta and warm cream accents, human-centric prose.
- **`cohere`**: Enterprise AI platform, vibrant data gradients, high-density analytics layout.
- **`elevenlabs`**: Audio-waveform aesthetics, cinematic dark UI, acoustic purple and cyan glows.
- **`mistral.ai`**: French-engineered minimalism, purple-toned slate canvas, clean academic typography.
- **`ollama`**: Terminal-first monochrome simplicity, minimalist local LLM developer vibe.
- **`replicate`**: Machine learning API style, clean white canvas, code-forward card grids.
- **`runwayml`**: Editorial film-festival aesthetic, cinematic dark hero panels, paper-white reading bands.
- **`voltagent`**: Void-black canvas, terminal-native layout, emerald green accents.
- **`x.ai`**: Stark monochrome, futuristic minimalism, high-contrast black and white.

### 4. Productivity, SaaS & Creative Tools
- **`stripe`**: Industry gold standard for payment UI, elegant 300-weight typography, signature purple/indigo gradients.
- **`notion`**: Warm minimalism, serif headings, soft muted grays, friendly document-like UI.
- **`figma`**: Collaborative design workspace, multi-color badge accents, crisp toolbars.
- **`framer`**: Motion-first, bold black and electric blue, design-forward marketing layouts.
- **`airtable`**: Spreadsheet-database hybrid, structured tabular aesthetics, cheerful color badges.
- **`cal`**: Open-source calendar scheduling, clean neutral tones, developer-oriented simplicity.
- **`intercom`**: Conversational UI patterns, approachable blues, rounded bubble shapes.
- **`webflow`**: Polished SaaS marketing aesthetic, rich typography, fluid card layouts.

### 5. Fintech & Modern Banking
- **`mercury`**: Startup banking platform, ink-violet night world, indigo action pills, refined custom sans.
- **`revolut`**: Digital neo-banking, futuristic cards, glowing gradients, high-density financial data.
- **`coinbase`**: Institutional trust blue, crisp data tables, accessible typography.
- **`binance`**: High-frequency trading floor urgency, Binance Yellow highlights, dense financial feeds.
- **`mastercard`**: Warm cream canvas, orbital pill geometries, editorial financial elegance.
- **`wise`**: Global borderless currency, bright signal green, clean accessible components.

### 6. Consumer, Media & E-Commerce
- **`apple`**: Premium whitespace, SF Pro typography, cinematic product framing, flawless visual hierarchy.
- **`airbnb`**: Warm coral brand accent (`#FF385C`), rounded cards, photography-first layout.
- **`nike`**: Massive uppercase typography, aggressive high-contrast monochrome, bold athletic energy.
- **`shopify`**: Dark-first cinematic commerce, neon green accents, ultra-light display headings.
- **`spotify`**: Vibrant Spotify green on dark backgrounds, album-art-driven cards, bold modern typography.
- **`theverge`**: Bold tech journalism, acid-mint and ultraviolet accents, distinct typographic personality.

### 7. Automotive & Retro
- **`tesla`**: Radical subtraction, full-viewport photography, minimalist Universal Sans navigation.
- **`bmw` / `bmw-m` / `ferrari` / `bugatti` / `lamborghini`**: Precision automotive engineering aesthetics.
- **`dell-1996`**: 90s vintage catalog web, ribbon cards, chunky Helvetica/Times Roman, nostalgic GIF badges.
- **`nintendo-2001`**: Y2K console chrome, brushed metal panels, halftone navs, outlined box-art wordmarks.

---

## How to Apply a Design System to a Project

### Step 1: Inspect the Brand Design System
Look up the brand's specifications in:
`references/design-md/<brand>/DESIGN.md`

Every `DESIGN.md` contains:
1. **Atmosphere & Philosophy**: Tone, density, dark/light mode balance.
2. **Color Palette**: Hex codes, background canvas, surface tiers, text hierarchy (ink, ink-muted, ink-subtle), and accent colors.
3. **Typography**: Font family, font sizes, weights, line-heights, and letter-spacings.
4. **Elevation & Borders**: Shadow formulas, hairline border colors, corner radius tokens.
5. **Component Specs**: Button states (default, hover, active), input boxes, cards, badges, and headers.
6. **Guardrails**: Explicit Do's and Don'ts.

### Step 2: Copy `DESIGN.md` to the Project Root (Optional but Recommended)
Run the bundled script to place a copy of `DESIGN.md` directly into the current workspace:
```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\apply-design.ps1 -Brand <brand-name>
```
*Example: To apply Linear style:*
```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\apply-design.ps1 -Brand linear.app
```

### Step 3: Implement Frontend Code Using the Tokens
When writing HTML, React, Vue, Svelte, or Tailwind CSS:
- Map CSS custom properties / variables (`--canvas`, `--surface-1`, `--accent`, `--ink`) to the exact hex values in `DESIGN.md`.
- Match the typography scale (e.g. `display-xl`, `headline`, `body`, `caption`).
- Respect padding, card corner radii, and border hairline styles.
- Follow the component state rules (hover, focus ring, disabled).
