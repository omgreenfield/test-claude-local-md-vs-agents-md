source util.sh

# Rename `CLAUDE` files to not interfere with `AGENTS.md` files
backup 'CLAUDE.local.md'
backup 'some_folder/CLAUDE.md'

make_request 'Please read the contents of some_folder/some_nested_folder/some_nested_file.txt'

# Expected:
#
# - AGENTS.md
#   - some_folder/AGENTS.md
#     - some_folder/some_nested_folder/AGENTS.md
