---
title: flutter_ilib Documentation Index
description: Documentation index and navigation guide for flutter_ilib
keywords: [index, navigation, documentation, guide]
version: 2.0.0
---

# flutter_ilib Documentation Index

## For AI Agents (Recommended Path)

If you're an AI agent (Claude, Copilot, etc.), follow this sequence:

0. **[../CLAUDE.md](../CLAUDE.md)** (Read first — the project's source of truth)
   - Project goal, conventions, and **must-follow rules** (formatting, testing, calendar/timezone)
   - Conversion status and source versions (the iLib / CLDR baseline — single source of truth)
   - Links into the detailed `doc/` below

1. **[quick_reference.md](./quick_reference.md)** (Start here for an overview)
   - Quick facts and overview
   - Key classes and common usage
   - Commands reference

2. **[architecture.md](./architecture.md)** (System design)
   - System architecture and data loading flow
   - Locale path generation and deep merge strategy
   - Directory structure

3. **[api.md](./api.md)** (APIs)
   - Class overview and relationships
   - Usage flows and combined examples
   - For individual method signatures, see dartdoc comments in source

4. **[development.md](./development.md)** (For developers)
   - Setup and environment
   - Testing guide
   - Coding conventions and contribution guidelines

---

## Browse by Topic

### Understand the project
→ [quick_reference.md](./quick_reference.md) + [architecture.md](./architecture.md)

### Use the library in my app
→ [quick_reference.md](./quick_reference.md) + [api.md](./api.md)

### Add new locale data
→ [development.md](./development.md) → "Adding Locale Data"

### Contribute code
→ [development.md](./development.md) → "Git Workflow" + "Code Conventions"

### Understand data loading
→ [architecture.md](./architecture.md) → "Data Loading Flow"

### Debug locale issues
→ [development.md](./development.md) → "Troubleshooting"

---

## Documents

### Core Documentation

| Document | Purpose | Audience |
|----------|---------|----------|
| [../CLAUDE.md](../CLAUDE.md) | Project source of truth: goal, conventions, must-follow rules, conversion status | Developers, AI |
| [quick_reference.md](./quick_reference.md) | Quick overview and common patterns | Everyone |
| [architecture.md](./architecture.md) | System design, data loading flow, directory structure | Developers, AI |
| [api.md](./api.md) | Class overview, usage flows, and combined examples | Developers, AI |
| [development.md](./development.md) | Setup, testing, contribution | Developers |
| [calendar-conversion.md](./calendar-conversion.md) | Calendar conversion logic in DateFmt | Developers, AI |
| [date-calendar-architecture.md](./date-calendar-architecture.md) | Date & calendar system layers, constructor pattern, critical rules | Developers, AI |
| [datefmt-conversion-plan.md](./datefmt-conversion-plan.md) | ILibDateFmt implementation reference (tokens, templates, DST) | Developers, AI |
| [local-timezone-support.md](./local-timezone-support.md) | System `'local'` timezone — implemented (Strategy A) + optional Strategy B | Developers, AI |
| [conversion-guide.md](./conversion-guide.md) | General JS→Dart conversion checklist | Developers |
| [test-mapping.md](./test-mapping.md) | JS→Dart test file mapping, not-converted patterns | Developers, AI |
| [benchmark.md](./benchmark.md) | Performance & memory: v2.0 (pure Dart) vs v1.3.0 (JS interop) | Developers, AI |
| [numfmt-conversion-plan.md](./numfmt-conversion-plan.md) | NumFmt & Currency implementation reference (rounding, precision, API differences) | Developers, AI |
| [durationfmt-conversion-plan.md](./durationfmt-conversion-plan.md) | DurationFmt implementation reference (plural engine, clock style, RTL) | Developers, AI |

### External Documentation

| Document | Purpose |
|----------|---------|
| [../README.md](../README.md) | User guide and quick start |
| [../CHANGELOG.md](../CHANGELOG.md) | Version history |

---

## Quick Search

### By Topic

**Data Loading**
- Overview: [architecture.md#data-loading-flow](./architecture.md#data-loading-flow)
- Path generation: [architecture.md#locale-path-generation](./architecture.md#locale-path-generation)
- Merging: [architecture.md#deep-merge-strategy](./architecture.md#deep-merge-strategy)

**Timezone**
- System `'local'` support (Strategy A): [local-timezone-support.md](./local-timezone-support.md)

**Development**
- Setup: [development.md#initial-setup](./development.md#initial-setup)
- Testing: [development.md#testing](./development.md#testing)
- Code Style: [development.md#code-conventions](./development.md#code-conventions)
- Contributing: [development.md#git-workflow](./development.md#git-workflow)

---

## FAQ

**Q: Where do I start?**
A: If you're an AI agent, follow the "For AI Agents" path above. If you're a human, pick a topic from "Browse by Topic".

**Q: What's the difference between quick_reference and api?**
A: `quick_reference` gives you the essentials and common patterns. `api` covers class relationships, usage flows, and combined examples.

**Q: How do I understand how locale data is loaded?**
A: Read [architecture.md#data-loading-flow](./architecture.md#data-loading-flow).

**Q: How do I add a new locale?**
A: Read [development.md#adding-locale-data](./development.md#adding-locale-data).

**Q: How do I run tests?**
A: Read [development.md#running-tests](./development.md#running-tests).

---

*See CHANGELOG.md for version history.*
