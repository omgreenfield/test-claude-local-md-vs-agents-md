source util.sh

# Rename `CLAUDE` files to not interfere with `AGENTS.md` files
backup 'CLAUDE.local.md'
backup 'some_folder/CLAUDE.md'

# Any task we ask of Claude should read `AGENTS.md` in the repo root
make_request 'How are you, today?'

# Expected:
#
# - AGENTS.md
