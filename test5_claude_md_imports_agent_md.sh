source util.sh

# Ensure we have `CLAUDE.local.md` in the repo root to demonstrate that it suppresses `AGENTS.md` reads
restore 'CLAUDE.local.md'
# Ensure `some_folder/CLAUDE.md` also imported `some_folder/AGENTS.md`
restore 'some_folder/CLAUDE.md'

# Ask Claude to read `some_folder/some_file.txt`, which 
# then prompts Claude to `read some_folder/AGENTS.md`
make_request 'Please read the contents of some_folder/some_file.txt'

# Expected:
#
# - CLAUDE.local.md
# - AGENTS.md
#   - some_folder/CLAUDE.md
#   - some_folder/AGENTS.md
