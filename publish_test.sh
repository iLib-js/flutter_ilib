#!/usr/bin/env bash

echo "dart format..."

dart format lib/
dart format test/

echo "flutter pub dry run..."
flutter pub publish --dry-run
#flutter pub publish

