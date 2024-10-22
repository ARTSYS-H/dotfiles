# 🛠️ My Dotfiles

This repository contains my personal configuration files (dotfiles) for various tools and environments that I use daily. This setup allows me to quickly configure any new system I use with my preferred settings.

## 🎯 Purpose

This repository contains configurations for:

- Shells: `Bash`
- Text editors: `helix`
- Terminal emulators: `Alacritty`
- Other tools: `git`, `ssh`

By storing these files in version control, I can easily keep my environment consistent across different machines.

## 🗂️ Structure

Here's an overview of the directory structure:

```lua
dotfiles/
├── .bashrc
├── .bash_aliases
├── .config/
│   └── helix/
│       ├── config.toml
│       └── languages.toml
├── .oh-my-bash/
│   └── custom/
└── README.md  <-- You are here!
```

## 🚀 Installation

To set up my environment on a new machine, I can clone this repository and run the following:

### Automatic Installation

```bash
git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh
```

> Note: The `install.sh` script backs up existing configuration files before replacing them with my dotfiles.

### Manual Installation

For manual installation, I copy the needed files directly to my home directory:

```bash
cp .bashrc ~/
cp .zshrc ~/
cp -r .config/nvim ~/.config/
```

> Alternatively, can create symlinks directly to dofiles.

## 🧩 Dependencies

These dotfiles assume certain programs are installed. Here's a list of key tools:

- `Git`
- [Oh My Bash](https://github.com/ohmybash/oh-my-bash)
- [Helix](https://github.com/helix-editor/helix)

## 📋 Customization

These configurations reflect my personal workflow, but I regularly adjust them depending on my preferences or new tools I discover. Some key points:

- **Themes**: Custom themes for `helix`, `bash-prompt`, and terminal colors are set up in the respective config files.
- **Aliases**: Useful shell aliases are available in `.bashrc`, `.bash_aliases` and `.oh-my_bash` to speed up daily tasks.

## 📄 License

This repository is for my personal use. If you happen to come across it and find it useful, feel free to adapt it for your own needs.
