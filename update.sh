#!/usr/bin/env bash
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIR"

echo "🔄 Checking for community updates..."

if [ -d ".git" ]; then
    git fetch origin main 2>/dev/null || true
    LOCAL=$(git rev-parse HEAD 2>/dev/null || true)
    REMOTE=$(git rev-parse origin/main 2>/dev/null || true)

    if [ "$LOCAL" != "$REMOTE" ] && [ -n "$REMOTE" ]; then
        echo "📥 Pulling latest community improvements and new subagents..."
        git pull origin main
    else
        echo "✨ Already on the latest community version!"
    fi
fi

echo "⚡ Re-registering all specialists globally..."
./install.sh

echo "🎉 Update complete! Your Antigravity environment is synced with the latest community skills."
