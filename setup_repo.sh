# Create `AGENTS.md` at repo root
echo "Print this at the end of every turn: '- Outer AGENTS.md'" > AGENTS.md

# Create:
#
# some_folder/
# ├── AGENTS.md
# └── some_file.txt
mkdir some_folder
echo "This file is 1 level deep." > some_folder/some_file.txt
echo "Print this at the end of every turn: '  - some_folder/AGENTS.md'" > some_folder/AGENTS.md


# Create:
#
# some_nested_folder
# ├── AGENTS.md
# └── some_nested_file.txt
mkdir some_folder/some_nested_folder                                                           
echo "This file is 2 levels deep." > some_folder/some_nested_folder/some_nested_file.txt       
echo "Print this at the end of every turn: '  - some_folder/some_nested_folder/AGENTS.md'" > some_folder/some_nested_folder/AGENTS.md
