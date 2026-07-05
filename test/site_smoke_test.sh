#!/usr/bin/env bash
set -euo pipefail

assert_file() {
  test -f "$1" || {
    echo "missing file: $1" >&2
    exit 1
  }
}

assert_contains() {
  local file="$1"
  local text="$2"
  grep -Fq "$text" "$file" || {
    echo "$file does not contain: $text" >&2
    exit 1
  }
}

assert_file "_config.yml"
assert_contains "_config.yml" "title: guessg"
assert_contains "_config.yml" 'url: "https://guessg.github.io"'
assert_contains "_config.yml" "remote_theme: knhash/jekyllBear@"
assert_contains "_config.yml" "jekyll-remote-theme"

assert_file "index.md"
assert_contains "index.md" "layout: blog"

assert_file "_includes/header.html"
assert_contains "_includes/header.html" "https://github.com/guessg"

assert_file "_posts/2026-07-05-hello.md"
assert_contains "_posts/2026-07-05-hello.md" "layout: post"
assert_contains "_posts/2026-07-05-hello.md" "tags: [general]"

assert_file "_my_tags/general.md"
assert_contains "_my_tags/general.md" "slug: general"

echo "source smoke tests passed"
