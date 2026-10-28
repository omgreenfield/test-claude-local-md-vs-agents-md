source util.sh

# Ensure we have `CLAUDE.local.md` in the repo root to demonstrate that it suppresses `AGENTS.md` reads
restore 'CLAUDE.local.md'
# Keep `some_folder/CLAUDE.md.bak` for now. We'll rename it in test5
backup 'some_folder/CLAUDE.md'

# Ask Claude to read `some_folder/some_file.txt`, which 
# then prompts Claude to `read some_folder/AGENTS.md`
make_request 'Please read the contents of some_folder/some_file.txt'

# Expected:
#
# - CLAUDE.local.md
# - AGENTS.md (💡 because `CLAUDE.local.md` imports it via `@AGENTS.md`)
