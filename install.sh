#!/usr/bin/env bash
# install.sh — install skills from phuongdinh1411/my-skills
# Usage:
#   All Claude Code skills:    bash install.sh --claude-code
#   All pi self-learning:      bash install.sh --pi
#   Specific skill:            bash install.sh --claude-code algo-sensei
#   Everything:                bash install.sh --all

set -e

REPO="https://github.com/phuongdinh1411/my-skills.git"
TMP_DIR="$(mktemp -d)"
CLAUDE_CODE_DIR="${HOME}/.claude/skills"
PI_DIR="${HOME}/.agents/skills"

CLAUDE_CODE_SKILLS=("algo-sensei" "algorithm-explainer" "python-best-practices")
PI_SKILLS=("cheat-sheet" "learning-ladder" "learn-20-hours" "find-signal" "feynman-loop" "quiz-me" "deep-learn")

cleanup() { rm -rf "$TMP_DIR"; }
trap cleanup EXIT

clone() {
  echo "📦 Cloning my-skills..."
  git clone --depth 1 "$REPO" "$TMP_DIR/my-skills" -q
}

install_claude_code() {
  local skills=("$@")
  mkdir -p "$CLAUDE_CODE_DIR"
  for skill in "${skills[@]}"; do
    src="$TMP_DIR/my-skills/skills/$skill"
    if [ -d "$src" ]; then
      cp -r "$src" "$CLAUDE_CODE_DIR/"
      echo "✅ Installed Claude Code skill: $skill → $CLAUDE_CODE_DIR/$skill"
    else
      echo "⚠️  Skill not found: $skill"
    fi
  done
}

install_pi() {
  local skills=("$@")
  mkdir -p "$PI_DIR"
  for skill in "${skills[@]}"; do
    src="$TMP_DIR/my-skills/skills/self-learning/$skill"
    if [ -d "$src" ]; then
      cp -r "$src" "$PI_DIR/"
      echo "✅ Installed pi skill: $skill → $PI_DIR/$skill"
    else
      echo "⚠️  Skill not found: $skill"
    fi
  done
}

usage() {
  echo "Usage:"
  echo "  bash install.sh --claude-code              # install all Claude Code skills"
  echo "  bash install.sh --pi                       # install all pi self-learning skills"
  echo "  bash install.sh --all                      # install everything"
  echo "  bash install.sh --claude-code algo-sensei  # install one Claude Code skill"
  echo "  bash install.sh --pi deep-learn            # install one pi skill"
}

if [ $# -eq 0 ]; then usage; exit 1; fi

clone

case "$1" in
  --claude-code)
    if [ -n "$2" ]; then
      install_claude_code "$2"
    else
      install_claude_code "${CLAUDE_CODE_SKILLS[@]}"
    fi
    ;;
  --pi)
    if [ -n "$2" ]; then
      install_pi "$2"
    else
      install_pi "${PI_SKILLS[@]}"
    fi
    ;;
  --all)
    install_claude_code "${CLAUDE_CODE_SKILLS[@]}"
    install_pi "${PI_SKILLS[@]}"
    ;;
  *)
    usage; exit 1
    ;;
esac

echo ""
echo "🎉 Done! Reload your agent to pick up the new skills."
