```markdown
# Development Utility Scripts

A collection of bash scripts designed to streamline common development tasks and enhance your workflow. These scripts provide simple, efficient solutions for managing virtual environments and simplifying Git operations.

## Scripts

### `stenv` - Python Virtual Environment Manager

`stenv` simplifies the management of Python virtual environments. It automatically detects existing environments and offers to create new ones if needed. It enhances the user experience with clear feedback and emoji indicators.

### `gitpu.sh` - Streamlined Git Commit & Push

`gitpu.sh` streamlines the Git workflow by combining the `add`, `commit`, and `push` commands into a single, easy-to-use command, without requiring you to open a text editor for commit messages.

## Usage

### Python Virtual Environment (`stenv`)

**Direct execution:**

```bash
source stenv
start_env
```

**Recommended: Add as bash alias**

To make `stenv` even easier to use, add the following lines to your `~/.bashrc` or `~/.bash_profile`:

```bash
source /path/to/stenv
alias stenv='start_env'
```

After updating your shell configuration, reload your shell and use:

```bash
stenv
```

This will activate the `start_env` function whenever you type `stenv` in your terminal.

### Git Commit & Push (`gitpu.sh`)

**Add as bash alias:**

For quick and easy access to the `gitpu.sh` script, add the following alias to your `~/.bashrc` or `~/.bash_profile`:

```bash
alias push='/path/to/gitpu.sh'
```

Then, after reloading your shell, you can use the script with:

```bash
push "Your commit message here"
```

If you omit the commit message, it will prompt you for one.

## What they do

### `stenv`

1.  **Virtual Environment Detection:** Automatically checks the current directory for existing virtual environments (`.venv` or `venv`).
2.  **Automatic Activation:** Activates any found virtual environments automatically.
3.  **Environment Creation:** If no virtual environment is found, it offers to create a new `.venv` environment.
4.  **User Experience:** Provides clear feedback with emojis for better user interaction.
5.  **Input Validation:** Handles user input validation during environment creation prompts.
6.  **Customizable:** Offers options for different virtual environment tools (e.g., `venv`, `virtualenv`, `conda`).  *(This feature may require updates to the script itself)*

### `gitpu.sh`

1.  **Streamlined Workflow:** Combines the `git add`, `git commit`, and `git push` commands into a single command.
2.  **Simplified Commit Messages:** Allows you to specify a commit message directly in the command, avoiding the need to open a text editor.  If no message is provided, it will prompt you for one.
3.  **Quick Commits:** Perfect for making quick commits during development.
4.  **Branch Handling:** Automatically pushes to the current branch. *(Consider adding functionality to specify a branch)*

## Contributing

Contributions are welcome! If you have ideas for new scripts or improvements to existing ones, please submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

Perfect for developers who work across multiple projects and want simplified command-line workflows, saving time and reducing repetitive tasks.
```