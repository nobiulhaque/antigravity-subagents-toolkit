#!/usr/bin/env bash
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMPLATE_DIR="$DIR/template/.agents"
TARGET="$1"

if [ -z "$TARGET" ]; then
    GLOBAL_SKILLS="$HOME/.gemini/config/skills"
    GLOBAL_RULES="$HOME/.gemini/config/rules"
    mkdir -p "$GLOBAL_SKILLS" "$GLOBAL_RULES"

    cp -R "$TEMPLATE_DIR/skills/"* "$GLOBAL_SKILLS/"
    cp -R "$TEMPLATE_DIR/rules/"* "$GLOBAL_RULES/"
    echo "✅ Successfully installed subagents globally to $HOME/.gemini/config"
    echo "These subagents are now active in EVERY Antigravity project."
else
    if [ ! -d "$TARGET" ]; then
        echo "Error: Target directory does not exist: $TARGET"
        exit 1
    fi
    mkdir -p "$TARGET/.agents"
    cp -R "$TEMPLATE_DIR/"* "$TARGET/.agents/"
    echo "✅ Successfully installed subagents into project: $TARGET/.agents"
fi
