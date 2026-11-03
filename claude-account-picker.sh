# --- Claude Code account picker ---
# Account 1 uses the default config (~/.claude), Account 2 uses ~/.claude-account2.
# Each account keeps its own login, settings and history.
claude() {
  if [ -n "$CLAUDE_CONFIG_DIR" ]; then
    command claude "$@"; return
  fi
  echo "Which Claude account?"
  echo "  1) Account 1 (default)"
  echo "  2) Account 2"
  read -r -p "Choose [1/2]: " choice
  case "$choice" in
    2) CLAUDE_CONFIG_DIR="$HOME/.claude-account2" command claude "$@" ;;
    *) command claude "$@" ;;
  esac
}
# --- end Claude Code account picker ---
