```markdown
# Development Utility Scripts

A collection of bash scripts designed to streamline common development tasks and enhance your workflow. These scripts provide simple, efficient solutions for managing virtual environments, simplifying Git operations, and more.

## Scripts

### `stenv` - Python Virtual Environment Manager

`stenv` simplifies the management of Python virtual environments. It automatically detects existing environments and offers to create new ones if needed. It enhances the user experience with clear feedback and emoji indicators.

### `gitpu.sh` - Streamlined Git Commit & Push

`gitpu.sh` streamlines the Git workflow by combining the `add`, `commit`, and `push` commands into a single, easy-to-use command, significantly reducing the time spent on routine tasks, without requiring you to open a text editor for commit messages.

## Usage

### Python Virtual Environment (`stenv`)

**Direct execution:**

```bash
source stenv
start_env
```

**Recommended: Add as bash alias**

To make `stenv` even easier to use, add the following lines to your `~/.bashrc` or `~/.zshrc` (or the appropriate configuration file for your shell):

```bash
source /path/to/stenv
alias stenv='start_env'
```

After updating your shell configuration, reload your shell (e.g., `source ~/.bashrc` or `source ~/.zshrc`) and use:

```bash
stenv
```

This will activate the `start_env` function whenever you type `stenv` in your terminal.

### Git Commit & Push (`gitpu.sh`)

**Add as bash alias:**

For quick and easy access to the `gitpu.sh` script, add the following alias to your `~/.bashrc` or `~/.zshrc`:

```bash
alias push='/path/to/gitpu.sh'
```

Then, after reloading your shell, you can use the script with:

```bash
push "Your commit message here"
```

If you omit the commit message, it will prompt you for one, providing an interactive commit message experience.

## What they do

### `stenv`

1.  **Virtual Environment Detection:** Automatically checks the current directory for existing virtual environments (`.venv` or `venv`).
2.  **Automatic Activation:** Activates any found virtual environments automatically, getting you straight to work.
3.  **Environment Creation:** If no virtual environment is found, it offers to create a new `.venv` environment, streamlining project setup.
4.  **User Experience:** Provides clear feedback with emojis for better user interaction, making the process more engaging.
5.  **Input Validation:** Handles user input validation during environment creation prompts, preventing common errors.
6.  **Customizable:** Offers options for different virtual environment tools (e.g., `venv`, `virtualenv`, `conda`).  *(This feature may require updates to the script itself)*. Future versions will automatically detect the project's requirements and suggest the appropriate environment.

### `gitpu.sh`

1.  **Streamlined Workflow:** Combines the `git add`, `git commit`, and `git push` commands into a single command, vastly improving efficiency.
2.  **Simplified Commit Messages:** Allows you to specify a commit message directly in the command, avoiding the need to open a text editor. If no message is provided, it will prompt you for one.
3.  **Quick Commits:** Perfect for making quick commits during development, encouraging frequent saves.
4.  **Branch Handling:** Automatically pushes to the current branch. *(Consider adding functionality to specify a branch in a future version)*
5.  **Error Handling:** Includes basic error handling to catch common issues during the Git process. (Future updates will feature more robust error reporting and handling).

## Extending Functionality

We welcome contributions and suggestions for expanding the functionality of these scripts. Here are some ideas:

*   **`stenv`**:
    *   Automatically install project dependencies based on `requirements.txt` or `pyproject.toml`.
    *   Add support for other virtual environment managers like `pipenv` and `poetry`.
*   **`gitpu.sh`**:
    *   Allow specifying a branch to push to.
    *   Add options for force pushing or setting upstream.
    *   Implement checks for uncommitted changes before pushing.

## Contributing

Contributions are welcome! If you have ideas for new scripts or improvements to existing ones, please submit a pull request. Be sure to follow our contributing guidelines (coming soon!).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

Perfect for developers who work across multiple projects and want simplified command-line workflows, saving time and reducing repetitive tasks, leading to a more enjoyable and productive development experience.