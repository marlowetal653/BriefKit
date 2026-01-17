#!/usr/bin/env bash
set -euo pipefail

# create-github-release.sh
# Create a GitHub release with all template zip files
# Usage: create-github-release.sh <version>

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <version>" >&2
  exit 1
fi

VERSION="$1"

# Remove 'v' prefix from version for release title
VERSION_NO_V=${VERSION#v}

gh release create "$VERSION" \
  .genreleases/brief-template-copilot-sh-"$VERSION".zip \
  .genreleases/brief-template-copilot-ps-"$VERSION".zip \
  .genreleases/brief-template-claude-sh-"$VERSION".zip \
  .genreleases/brief-template-claude-ps-"$VERSION".zip \
  .genreleases/brief-template-gemini-sh-"$VERSION".zip \
  .genreleases/brief-template-gemini-ps-"$VERSION".zip \
  .genreleases/brief-template-cursor-agent-sh-"$VERSION".zip \
  .genreleases/brief-template-cursor-agent-ps-"$VERSION".zip \
  .genreleases/brief-template-opencode-sh-"$VERSION".zip \
  .genreleases/brief-template-opencode-ps-"$VERSION".zip \
  .genreleases/brief-template-qwen-sh-"$VERSION".zip \
  .genreleases/brief-template-qwen-ps-"$VERSION".zip \
  .genreleases/brief-template-windsurf-sh-"$VERSION".zip \
  .genreleases/brief-template-windsurf-ps-"$VERSION".zip \
  .genreleases/brief-template-codex-sh-"$VERSION".zip \
  .genreleases/brief-template-codex-ps-"$VERSION".zip \
  .genreleases/brief-template-kilocode-sh-"$VERSION".zip \
  .genreleases/brief-template-kilocode-ps-"$VERSION".zip \
  .genreleases/brief-template-auggie-sh-"$VERSION".zip \
  .genreleases/brief-template-auggie-ps-"$VERSION".zip \
  .genreleases/brief-template-roo-sh-"$VERSION".zip \
  .genreleases/brief-template-roo-ps-"$VERSION".zip \
  .genreleases/brief-template-codebuddy-sh-"$VERSION".zip \
  .genreleases/brief-template-codebuddy-ps-"$VERSION".zip \
  .genreleases/brief-template-qoder-sh-"$VERSION".zip \
  .genreleases/brief-template-qoder-ps-"$VERSION".zip \
  .genreleases/brief-template-amp-sh-"$VERSION".zip \
  .genreleases/brief-template-amp-ps-"$VERSION".zip \
  .genreleases/brief-template-shai-sh-"$VERSION".zip \
  .genreleases/brief-template-shai-ps-"$VERSION".zip \
  .genreleases/brief-template-q-sh-"$VERSION".zip \
  .genreleases/brief-template-q-ps-"$VERSION".zip \
  .genreleases/brief-template-bob-sh-"$VERSION".zip \
  .genreleases/brief-template-bob-ps-"$VERSION".zip \
  --title "Brief Templates - $VERSION_NO_V" \
  --notes-file release_notes.md
