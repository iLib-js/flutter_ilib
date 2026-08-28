---
name: prepare-pr
description: >-
  Self-review the current branch and assemble everything needed to open a GitHub
  PR for flutter_ilib — conventional commit/PR title, filled-in PR template, and
  test/analyze/format evidence. Delegates the conversion-specific review to the
  `review-changes` skill. Outputs the PR content to chat for the user to
  paste — it does NOT run gh/push. Use when
  wrapping up a change and preparing a PR. Triggers: "create a PR",
  "prepare pull request", "review my changes before PR", "open a PR",
  "self-review this branch".
---

# Prepare a pull request

Take the current branch from "code written" to "ready to open a PR": a focused
self-review, then the exact PR metadata this repo expects. **This skill does not
push, commit, or run `gh pr create`.** Its only output is the PR content —
title, filled template, and evidence — written to chat for the user to copy.

## Ask first

- **Scope** — is this one logical change? If the diff mixes unrelated concerns
  (a conversion + an unrelated refactor), suggest splitting before proceeding.

## Procedure

### 1. Identify the current branch and the base branch

Do not hardcode the base — the integration branch changes over time (the old
`migration/ilib-js-to-dart` is being retired). Determine both, then confirm the
base with the user:

```bash
git fetch origin
git branch --show-current                 # current (source) branch
git remote show origin | grep 'HEAD branch'  # repo default base (usually main)
```

Pick the base the PR should target (repo default unless the user says otherwise),
then read the diff against it — know what each hunk does and why:

```bash
BASE=origin/<base-branch>
git status
git diff --stat $(git merge-base HEAD "$BASE")..HEAD
git log --oneline $(git merge-base HEAD "$BASE")..HEAD
```

### 2. Self-review

Run the `review-changes` skill on the diff — it covers the conversion-specific
gates (expected-value integrity, test placement, locale scope, calendar base-class
rules, test hygiene, exports, docs) and reports findings with `file:line`. Resolve
any must-fix findings before continuing. For deeper correctness/security depth,
also run `/code-review` or the `security-review` skill.

### 3. Gather the required evidence

The PR template checklist maps to concrete commands — run them and capture the
result so the checklist reflects reality, not hope:

```bash
dart format .           # must produce no changes (pre-commit hook enforces this)
flutter analyze         # must pass clean
./execute_test.sh       # full suite (unit + integration); or: flutter test
```

Also verify the **example app** still works if the change touches public API or
formatting output (PR template item 2).

### 4. Draft the commit / PR title

Conventional Commits, per [doc/development.md](../../../doc/development.md)
§ Commit Message Format:

```
type(scope): description

- Detail 1
- Detail 2

fixes: #issue
```

**Types**: feat, fix, refactor, test, docs, chore. Scope is the area
(`locale`, `datefmt`, `calendar`, `numfmt`, …). The PR title follows the same form.

**Write the title and body in English** — this repo's commit messages, PR
template, and docs are all English. Keep any surrounding explanation to the user
in the conversation language.

### 5. Fill in the PR template

`.github/PULL_REQUEST_TEMPLATE.md` is authoritative — mirror its exact structure:

```markdown
### Checklist

The following lists affects Pub Points on pub.dev when the package is published.
* [x] Passed all tests.
* [x] Passed `flutter analyze` with no issues.
* [x] Verified that the example app works.
* [x] Executed the `dart format` command.
* [x] Added the API description if necessary.
* [x] Updated CHANGELOG.md for user-facing changes.

### Description

<what changed and why; test results; any new locale data added>
```

Only tick a box you actually verified in step 3. If the example app was not
re-verified because the change can't affect it, say so in the Description rather
than ticking blindly.

**Description line width** — wrap the Description prose at ~100 columns (soft
wrap; don't split code, URLs, or `inline code` spans). This is the repo
preference for readable diffs in the commit/PR body — it is independent of the
`page_width: 80` used by `dart format` for source code.

### 6. Output the PR content to chat

Write the following into the chat so the user can copy it into GitHub themselves.
The **title and body must be in English** (repo convention); the surrounding
explanation can be in the conversation language.

- **Base branch** — the base identified and confirmed in step 1.
- **Title** — the conventional-commit line from step 4.
- **Body** — the filled-in PR template from step 5.
- **Evidence** — the format/analyze/test results from step 3, so the user can see
  which checklist boxes are truthfully ticked.

Do **not** run `git push`, `git commit`, or `gh pr create`. Creating the PR is the
user's action. If the user later asks you to open it, that is a separate,
explicit request.

## Critical rules

- **This skill never creates the PR.** No `gh pr create`, no `git push`, no
  `git commit` — output the content to chat and stop. Opening the PR is the user's
  job (or a separate explicit request).
- Never tick a checklist box you didn't verify.
- Never hardcode the base branch — detect it (step 1) and confirm with the user;
  the integration branch changes over time.

## Checklist

- [ ] Current branch and base branch identified; base confirmed with user
- [ ] Diff read and understood; scope is one logical change
- [ ] `review-changes` run; must-fix findings resolved
- [ ] `dart format .` clean, `flutter analyze` clean, full test suite green
- [ ] Example app re-verified if public API / formatting changed
- [ ] Conventional-commit title drafted
- [ ] PR template filled; only verified boxes ticked
- [ ] Title + body + evidence written to chat (PR not created — user's action)
