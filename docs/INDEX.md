---
title: flutter_ilib Documentation Index
description: Complete documentation index and navigation guide for flutter_ilib
keywords: [index, navigation, documentation, guide]
version: 2.0.0
---

# flutter_ilib Documentation Index

Welcome to flutter_ilib documentation. This index helps you find the right document for your needs.

## 🤖 For AI Agents (Recommended Path)

If you're an AI agent (Claude, Copilot, etc.), follow this sequence:

1. **[quick_reference.md](./quick_reference.md)** (Start here!)
   - Quick facts and overview
   - Key classes and common usage
   - Commands reference
   - Time: ~5 minutes

2. **[architecture.md](./architecture.md)** (Deep dive)
   - System architecture and design
   - Data loading flow with diagrams
   - Component details
   - Validation logic
   - Time: ~15 minutes

3. **[api.md](./api.md)** (APIs)
   - Complete API reference
   - All classes and methods
   - Code examples for each API
   - Type definitions
   - Time: ~20 minutes

4. **[development.md](./development.md)** (For developers)
   - Setup and environment
   - Testing guide
   - Coding conventions
   - Contributing guidelines
   - Time: ~30 minutes

## 📚 For Humans (Browse by Topic)

### I want to...

#### Understand the project
→ [quick_reference.md](./quick_reference.md) + [architecture.md](./architecture.md)

#### Use the library in my app
→ [quick_reference.md](./quick_reference.md) + [api.md](./api.md)

#### Format dates by locale
→ [api.md](./api.md#ilibdate-api) → "ILibDate API"

#### Get locale information
→ [api.md](./api.md#iliblocaleinfo-api) → "ILibLocaleInfo API"

#### Parse locale strings
→ [api.md](./api.md#iliblocale-api) → "ILibLocale API"

#### Add new locale data
→ [development.md](./development.md) → "Adding Locale Data"

#### Contribute code
→ [development.md](./development.md) → "Git Workflow" + "Code Conventions"

#### Understand data loading
→ [architecture.md](./architecture.md) → "Data Loading Flow"

#### Debug locale issues
→ [development.md](./development.md) → "Troubleshooting"

## 📖 Documents

### Core Documentation

| Document | Purpose | Audience | Length |
|----------|---------|----------|--------|
| [quick_reference.md](./quick_reference.md) | Quick overview and common patterns | Everyone | ~150 lines |
| [architecture.md](./architecture.md) | System design and internals | Developers, AI | ~450 lines |
| [api.md](./api.md) | Complete API reference | Developers, AI | ~400 lines |
| [development.md](./development.md) | Setup, testing, contribution | Developers | ~500 lines |
| [calendar-conversion.md](./calendar-conversion.md) | Calendar conversion logic in DateFmt | Developers, AI | ~180 lines |
| [date-calendar-architecture.md](./date-calendar-architecture.md) | Date & calendar system layers, constructor pattern | Developers, AI | ~200 lines |
| [datefmt-conversion-plan.md](./datefmt-conversion-plan.md) | DateFmt implementation details (tokens, templates, DST) | Developers, AI | ~200 lines |
| [conversion-guide.md](./conversion-guide.md) | General JS→Dart conversion checklist | Developers | ~150 lines |
| [test-mapping.md](./test-mapping.md) | JS→Dart test file mapping, not-converted patterns | Developers, AI | ~250 lines |

### External Documentation

| Document | Purpose | Link |
|----------|---------|------|
| **README.md** | User guide and quick start | `../README.md` |
| **Docs.md** | Detailed user documentation | `../Docs.md` |
| **Tips.md** | Tips and troubleshooting | `../Tips.md` |
| **CHANGELOG.md** | Version history | `../CHANGELOG.md` |

## 🎯 Learning Paths

### Path 1: Quick Start (15 min)
1. [quick_reference.md](./quick_reference.md) - Overview
2. [README.md](../README.md) - Getting started examples

### Path 2: Deep Understanding (1 hour)
1. [quick_reference.md](./quick_reference.md) - Overview
2. [architecture.md](./architecture.md) - How it works
3. [api.md](./api.md) - What you can do
4. [development.md](./development.md) - How to extend

### Path 3: Contributing (1.5 hours)
1. [quick_reference.md](./quick_reference.md) - Overview
2. [architecture.md](./architecture.md) - System design
3. [api.md](./api.md) - Current APIs
4. [development.md](./development.md) - Full development guide
5. [Docs.md](../Docs.md) - User-facing documentation

### Path 4: Troubleshooting (15 min)
1. [Tips.md](../Tips.md) - Known issues and solutions
2. [development.md](./development.md#troubleshooting) - Debug steps

## 🔍 Quick Search

### By Topic

**Locale Handling**
- Parsing: [api.md#iliblocale-api](./api.md#iliblocale-api)
- Validation: [architecture.md#validation-logic](./architecture.md#validation-logic)
- Data paths: [architecture.md#locale-path-generation](./architecture.md#locale-path-generation)

**Data Loading**
- Overview: [architecture.md#data-loading-flow](./architecture.md#data-loading-flow)
- Algorithm: [architecture.md#step-by-step-process](./architecture.md#step-by-step-process)
- Merging: [architecture.md#deep-merge-strategy](./architecture.md#deep-merge-strategy)

**Timezone**
- System `'local'` support (design / deferred): [local-timezone-support.md](./local-timezone-support.md)

**APIs**
- ILibLocale: [api.md#iliblocale-api](./api.md#iliblocale-api)
- ILibLocaleInfo: [api.md#iliblocaleinfo-api](./api.md#iliblocaleinfo-api)
- ILibDate: [api.md#ilibdate-api](./api.md#ilibdate-api)
- ILibCaseMapper: [api.md#ilibcasemapper-api](./api.md#ilibcasemapper-api)

**Development**
- Setup: [development.md#initial-setup](./development.md#initial-setup)
- Testing: [development.md#testing](./development.md#testing)
- Code Style: [development.md#code-conventions](./development.md#code-conventions)
- Contributing: [development.md#git-workflow](./development.md#git-workflow)

### By Audience

**Product Managers / Non-Technical**
- [quick_reference.md](./quick_reference.md) - Overview

**App Developers (Using the library)**
- [quick_reference.md](./quick_reference.md) - Overview
- [api.md](./api.md) - How to use
- [README.md](../README.md) - Examples

**Library Developers (Contributing)**
- [quick_reference.md](./quick_reference.md) - Overview
- [architecture.md](./architecture.md) - How it works
- [api.md](./api.md) - Current APIs
- [development.md](./development.md) - Development guide

**System Architects**
- [architecture.md](./architecture.md) - Design
- [api.md](./api.md) - Interface

**QA / Testers**
- [development.md#testing](./development.md#testing) - Test guide
- [Tips.md](../Tips.md) - Known issues

## 📋 Document Metadata

### quick_reference.md
- **Type**: Overview
- **Size**: ~150 lines
- **Difficulty**: Beginner
- **Prerequisite**: None
- **Topics**: Classes, Common patterns, Quick commands
- **Best for**: Everyone, quick overview

### architecture.md
- **Type**: Deep dive
- **Size**: ~450 lines
- **Difficulty**: Intermediate
- **Prerequisite**: quick_reference.md
- **Topics**: System design, Data flow, Component details
- **Best for**: Developers, system designers

### api.md
- **Type**: Reference
- **Size**: ~400 lines
- **Difficulty**: Intermediate
- **Prerequisite**: quick_reference.md
- **Topics**: All APIs, Methods, Examples
- **Best for**: Developers, API usage

### development.md
- **Type**: Guide
- **Size**: ~500 lines
- **Difficulty**: Intermediate-Advanced
- **Prerequisite**: quick_reference.md, architecture.md
- **Topics**: Setup, Testing, Code style, Contributing
- **Best for**: Contributors, maintainers

## 🔗 Related Resources

### Official
- **iLib GitHub**: https://github.com/iLib-js/iLib
- **BCP 47 Standard**: https://tools.ietf.org/html/bcp47
- **ISO Standards**:
  - ISO 639 (Languages): https://iso639-3.sil.org/
  - ISO 3166 (Countries): https://www.iso.org/iso-3166-1-alpha-2.html
  - ISO 15924 (Scripts): https://www.unicode.org/iso15924/

### Flutter
- **Flutter Docs**: https://flutter.dev/docs
- **Dart Language**: https://dart.dev/guides
- **Pub.dev Package**: https://pub.dev/packages/flutter_ilib

## ❓ FAQ

**Q: Where do I start?**  
A: If you're an AI agent, follow the "For AI Agents" path above. If you're a human, choose a learning path based on your goal.

**Q: What's the difference between quick_reference and api?**  
A: `quick_reference` gives you the essentials and common patterns. `api` is the complete reference with all details.

**Q: I want to understand how locale data is loaded.**  
A: Read [architecture.md#data-loading-flow](./architecture.md#data-loading-flow).

**Q: I want to add a new locale.**  
A: Read [development.md#adding-locale-data](./development.md#adding-locale-data).

**Q: I found a bug, what do I do?**  
A: Check [Tips.md](../Tips.md) first, then file an issue on GitHub.

**Q: How do I run tests?**  
A: Read [development.md#running-tests](./development.md#running-tests).

## 🎓 Knowledge Graph

```
quick_reference (Start Here!)
    ↓
architecture (Understand the system)
    ↓
api (Learn the APIs)
    ↓
development (Get hands-on)
```

## 📝 Document Status

| Document | Status | Last Updated |
|----------|--------|--------------|
| quick_reference.md | ✅ Current | May 2026 |
| architecture.md | ✅ Current | May 2026 |
| api.md | ✅ Current | May 2026 |
| development.md | ✅ Current | May 2026 |
| README.md | ✅ Current | (See file) |
| CHANGELOG.md | ✅ Current | (See file) |

---

**Note**: This documentation is designed to be read by both humans and AI agents. Documents are self-contained but cross-referenced for completeness.

*Last Updated: May 2026*
