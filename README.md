# ai-code-snap

This project allows you to compile code and generate an `output.md` file that can be used by AI code generators like ChatGPT, Codex, Claude, among others.

## Prerequisites

Make sure you have `git` and `rsync` installed on your system. You can check by running:

```bash
git --version
rsync --version
```

If you don't have them, you can install them using your preferred package manager. For example, on Debian/Ubuntu:

```bash
sudo apt install git rsync
```

## Clone the Repository

To get started, clone this repository to your local machine. Open a terminal and run the following commands:

```bash
git clone https://github.com/wuilliam321/ai-code-snap.git
cd ai-code-snap
```

## Install

Add the script to your PATH so you can run it from any location. You can do this by running:

```bash
echo "export PATH=\"\$PATH:$(pwd)\"" >> ~/.zshrc && source ~/.zshrc
```

If you use `bash`, replace `~/.zshrc` with `~/.bashrc`.

## Run the Script

From any project in your terminal, simply run the following command:

```bash
generate_output.sh
```

This will generate the `output.md` file with the relative paths and contents of your files, ready to be used with AI models.

## Notes

- Make sure you have a `.generateignore` file in your directory to specify which files or folders you want to exclude during synchronization.
- The script creates a temporary directory to handle the files and removes it automatically upon completion.

That's it! Now you can use the script and generate `output.md` for your AI code generation needs.
