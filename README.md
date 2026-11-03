# claude-account-picker

A bash function that asks which Claude Code account to use each time you run `claude`.

- **Account 1** uses the default config (`~/.claude`)
- **Account 2** uses `~/.claude-account2` (via `CLAUDE_CONFIG_DIR`)

Each account keeps its own login, settings and history.

## Install

```bash
git clone <this repo> && cd claude-account-picker
cat claude-account-picker.sh >> ~/.bashrc
mkdir -p ~/.claude-account2
source ~/.bashrc
```

Then run `claude`, pick **2**, and log in with your second account (one time only).

## Notes

- Arguments pass through: `claude -c`, `claude "fix this bug"`, etc.
- If `CLAUDE_CONFIG_DIR` is already set, the prompt is skipped (keeps scripts working).
- Pressing Enter defaults to Account 1.
