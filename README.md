# Test `CLAUDE.local.md` vs `AGENTS.md`

This repo aims to illustrate that if a `CLAUDE.local.md` file exists anywhere in a repo, `AGENTS.md` files at any level other than the repo root are completely ignored

## Claude instruction files

Each of the following instructions files tells Claude to print that file's path at the end of the turn. So when Claude reads `AGENTS.md`, it prints `- AGENTS.md` and so forth.

```sh
./
├── AGENTS.md
├── CLAUDE.local.md
├── some_folder/
│   ├── AGENTS.md
│   ├── CLAUDE.md
│   └── some_nested_folder/
│       ├── AGENTS.md
│       └── some_nested_file.txt
```
