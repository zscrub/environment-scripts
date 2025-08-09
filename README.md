# Development Utility Scripts

Collection of bash scripts to streamline common development tasks.

## Scripts

### `stenv` - Python Virtual Environment Manager
Provides convenient functions for managing Python virtual environments in your projects.

### `gitpu.sh` - Streamlined Git Commit & Push  
Simplifies the git workflow by combining add, commit, and push into a single command with optional messaging (no vim required).

## Usage

### Python Virtual Environment (`stenv`)
**Direct execution:**
```bash
source stenv
start_env
```

**Recommended: Add as bash alias**
Add these lines to your `~/.bashrc` or `~/.bash_profile`:
```bash
source /path/to/stenv
alias stenv='start_env'
```

Then reload your shell and use:
```bash
stenv
```

### Git Commit & Push (`gitpu.sh`)
**Add as bash alias:**
```bash
alias push='/path/to/gitpu.sh'
```

Then use:
```bash
push
```

## What they do

### `stenv`
1. Checks current directory for existing virtual environments (`.venv` or `venv`)
2. Activates found environments automatically
3. If none exist, offers to create a new `.venv` environment
4. Provides clear feedback with emojis for better UX
5. Handles user input validation for environment creation prompts

### `gitpu.sh`
1. Streamlines git workflow into a single command
2. Adds all files, commits with optional messaging, and pushes
3. Avoids opening vim for commit messages
4. Perfect for quick commits during development

Perfect for developers who work across multiple projects and want simplified command-line workflows.