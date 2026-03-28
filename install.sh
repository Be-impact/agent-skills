#!/usr/bin/env bash
# BE.IMPACT Agent Skills — installer
# Usage: ./install.sh [plugin-name] [--target <dir>]
# Compatible with: OpenClaw, Claude Code (Codex), and any skills-compatible agent
# Follows the agentskills.io spec: https://agentskills.io

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PLUGINS_DIR="$REPO_ROOT/plugins"
VERSION="1.3.0"
NAMESPACE="beimpact"

# ── Default install targets ───────────────────────────────────────────────────
OPENCLAW_TARGET="$HOME/.openclaw/workspace/skills"
CODEX_TARGET="$HOME/.codex/skills"
CLAUDE_CODE_TARGET="$HOME/.claude/skills"

# Auto-detect target
detect_target() {
  if [[ -d "$HOME/.openclaw" ]]; then
    echo "$OPENCLAW_TARGET"
  elif [[ -d "$HOME/.codex" ]]; then
    echo "$CODEX_TARGET"
  elif [[ -d "$HOME/.claude" ]]; then
    echo "$CLAUDE_CODE_TARGET"
  else
    echo "$HOME/.agent-skills"
  fi
}

TARGET="${TARGET:-$(detect_target)}"

# ── Arg parsing ───────────────────────────────────────────────────────────────
PLUGIN=""
ACTION="install"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --target|-t)
      TARGET="$2"; shift 2 ;;
    list)
      ACTION="list"; shift ;;
    verify)
      ACTION="verify"; shift ;;
    update)
      ACTION="update"; PLUGIN="${2:-}"; shift; [[ $# -gt 0 ]] && shift || true ;;
    uninstall)
      ACTION="uninstall"; PLUGIN="${2:-}"; shift; [[ $# -gt 0 ]] && shift || true ;;
    --help|-h)
      ACTION="help"; shift ;;
    *)
      PLUGIN="$1"; shift ;;
  esac
done

# ── Helpers ───────────────────────────────────────────────────────────────────
green()  { echo -e "\033[32m$*\033[0m"; }
yellow() { echo -e "\033[33m$*\033[0m"; }
red()    { echo -e "\033[31m$*\033[0m"; }
bold()   { echo -e "\033[1m$*\033[0m"; }

available_plugins() {
  find "$PLUGINS_DIR" -mindepth 1 -maxdepth 1 -type d | xargs -I{} basename {} | sort
}

install_plugin() {
  local plugin="$1"
  local plugin_dir="$PLUGINS_DIR/$plugin"

  if [[ ! -d "$plugin_dir" ]]; then
    red "✗ Plugin not found: $plugin"
    echo "  Available: $(available_plugins | tr '\n' ' ')"
    exit 1
  fi

  local skills_dir="$plugin_dir/skills"
  if [[ ! -d "$skills_dir" ]]; then
    yellow "⚠ No skills/ directory in plugin: $plugin (may be empty/planned)"
    return
  fi

  local skill_count=0
  mkdir -p "$TARGET/$NAMESPACE/$plugin"

  # Write plugin metadata
  cat > "$TARGET/$NAMESPACE/$plugin/.plugin.json" <<EOF
{
  "namespace": "$NAMESPACE",
  "plugin": "$plugin",
  "version": "$VERSION",
  "source": "https://github.com/Be-impact/agent-skills",
  "installed_at": "$(date -u +%Y-%m-%dT%H:%M:%SZ)"
}
EOF

  # Install each skill
  for skill_path in "$skills_dir"/*/; do
    [[ -d "$skill_path" ]] || continue
    local skill_name
    skill_name="$(basename "$skill_path")"

    if [[ ! -f "$skill_path/SKILL.md" ]]; then
      yellow "  ⚠ Skipping $skill_name (no SKILL.md)"
      continue
    fi

    local dest="$TARGET/$NAMESPACE/$plugin/$skill_name"
    rm -rf "$dest"
    cp -r "$skill_path" "$dest"
    green "  ✓ Installed $skill_name"
    ((skill_count++))
  done

  echo ""
  bold "Installed plugin: $plugin ($skill_count skills → $TARGET/$NAMESPACE/$plugin/)"
}

install_all() {
  bold "BE.IMPACT Agent Skills v$VERSION — installing all plugins"
  echo "Target: $TARGET"
  echo ""
  for plugin in $(available_plugins); do
    echo "── $plugin"
    install_plugin "$plugin"
    echo ""
  done
  green "✓ All plugins installed."
  echo ""
  echo "Restart your agent to load the new skills."
}

# ── Actions ───────────────────────────────────────────────────────────────────
case "$ACTION" in
  list)
    bold "Available plugins:"
    for plugin in $(available_plugins); do
      skill_count=0
      if [[ -d "$PLUGINS_DIR/$plugin/skills" ]]; then
        skill_count=$(find "$PLUGINS_DIR/$plugin/skills" -name "SKILL.md" | wc -l | tr -d ' ')
      fi
      echo "  $plugin  ($skill_count skills)"
    done
    ;;

  verify)
    bold "Verifying installed skills in $TARGET/$NAMESPACE/"
    if [[ ! -d "$TARGET/$NAMESPACE" ]]; then
      yellow "Nothing installed yet at $TARGET/$NAMESPACE/"
      exit 0
    fi
    find "$TARGET/$NAMESPACE" -name "SKILL.md" | while read -r f; do
      echo "  ✓ $f"
    done
    ;;

  uninstall)
    if [[ -z "$PLUGIN" ]]; then
      red "Usage: ./install.sh uninstall <plugin-name>"
      exit 1
    fi
    local dest="$TARGET/$NAMESPACE/$PLUGIN"
    if [[ -d "$dest" ]]; then
      rm -rf "$dest"
      green "✓ Uninstalled $PLUGIN from $dest"
    else
      yellow "Not installed: $PLUGIN"
    fi
    ;;

  update)
    if [[ -z "$PLUGIN" ]]; then
      bold "Updating all installed plugins..."
      for plugin in $(available_plugins); do
        [[ -d "$TARGET/$NAMESPACE/$plugin" ]] && install_plugin "$plugin" || true
      done
    else
      install_plugin "$PLUGIN"
    fi
    ;;

  help)
    cat <<HELP
BE.IMPACT Agent Skills installer v$VERSION

Usage:
  ./install.sh                        Install all plugins
  ./install.sh <plugin>               Install a specific plugin
  ./install.sh list                   List available plugins
  ./install.sh verify                 Verify installed skills
  ./install.sh update [plugin]        Update one or all plugins
  ./install.sh uninstall <plugin>     Remove a plugin
  ./install.sh --target <dir>         Install to a custom directory

Available plugins:
$(available_plugins | sed 's/^/  /')

Install target (auto-detected): $TARGET

Examples:
  ./install.sh impact-domain
  ./install.sh ecosystem-intelligence --target ~/my-agent/skills
  ./install.sh update impact-domain
HELP
    ;;

  install)
    if [[ -z "$PLUGIN" ]]; then
      install_all
    else
      echo "Target: $TARGET"
      echo ""
      install_plugin "$PLUGIN"
      echo ""
      green "✓ Done. Restart your agent to load the new skills."
    fi
    ;;
esac
