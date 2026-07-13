#!/usr/bin/env bash
#
# Install the repo's git hooks by pointing core.hooksPath at scripts/git-hooks.
# Because the hooks live under version control, every contributor gets the same
# checks after running this once. Run from anywhere inside the repo.

set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
git -C "$repo_root" config core.hooksPath scripts/git-hooks
chmod +x "$repo_root"/scripts/git-hooks/*

echo "Installed git hooks (core.hooksPath -> scripts/git-hooks):"
ls -1 "$repo_root"/scripts/git-hooks
echo
echo "Pre-commit will now run 'dart format' checks on staged .dart files."
echo "To disable: git config --unset core.hooksPath"
