---
name: write-commit-message
description: >-
  Show a ready-to-use commit message for the current changes in flutter_ilib in
  chat, matching this repo's commit style. Reads the diff and prints the message
  for the user to copy — it NEVER runs git commit or stages anything. Use when
  the user wants to see the commit message for changes they will commit
  themselves. Triggers: "write a commit message", "show me the commit message",
  "commit message for this", "what should the commit say".
---

# Write a commit message

Show a ready-to-use commit message for the pending changes so the user can commit
it themselves. **This skill only prints the message to chat — it never commits,
stages, or pushes.** Performing the commit is entirely the user's action and is
out of scope for this skill.

## Procedure

### 1. Read what changed

```bash
git status
git diff --staged        # if something is staged, describe exactly that
git diff                 # otherwise describe the working-tree changes
```

If both staged and unstaged changes exist, ask which set the commit should cover
(or suggest staging the intended files first). Describe only what the commit will
actually include — never describe changes that won't be in it.

### 2. Write the message

Follow [docs/development.md](../../../docs/development.md) § Commit Message Format:

```
type(scope): description

- Detail 1
- Detail 2

fixes: #issue        # only if it closes an issue
```

- **Types**: feat, fix, refactor, test, docs, chore
- **Scope**: the area touched — `locale`, `datefmt`, `calendar`, `numfmt`,
  `durationfmt`, `timezone`, `test`, `docs`, … (omit if it spans many)
- **Subject**: imperative mood, lower-case, no trailing period, ≤ ~72 chars
- **Body**: bullet points for the *what/why*, only when the subject isn't enough.
  Small mechanical changes need no body.
- Write it in **English** (repo convention); explain to the user in the
  conversation language.

Match the surrounding history — skim `git log --oneline -15` for the prevailing
style before drafting.

### 3. Output to chat

Present the message in a code block so the user can copy it. If the change is
better split into more than one commit (unrelated concerns mixed), say so and
propose the split instead of forcing one message.

Do **not** run `git add`, `git commit`, or `git push` — this skill ends at
showing the message. The user takes it from there.

**Do not append a `Co-Authored-By: Claude` trailer** — this repo's history does
not use it (the standard harness default is overridden here to match convention).

## Critical rules

- Committing is out of scope — only print the message; never `git add`/`commit`/`push`.
- Describe only the changes the commit will include (staged vs unstaged).
- Conventional-Commits type/scope, English, imperative subject.

## Checklist

- [ ] Diff read; staged vs unstaged scope clear
- [ ] Type/scope/subject follow the repo format
- [ ] Body added only if it adds information
- [ ] Split suggested if the change mixes unrelated concerns
- [ ] Message printed to chat only (no git add/commit/push)
