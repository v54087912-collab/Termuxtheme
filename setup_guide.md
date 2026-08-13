# Termux Custom Theme & NL Setup Guide

This folder contains a complete backup of your custom Termux environment, including the custom `theader` theme, font, color scheme, and the smart `[NL]` (New Line) button configuration.

## Files Included

1. `theader.zsh-theme` - Your custom Zsh prompt with the `⋙` arrows, username/hostname, current path, and date badge.
2. `termux.properties` - Your Termux configuration, including the custom `[NL]` button mapped to the `ALT` modifier.
3. `colors.properties` - The color scheme used for your terminal.
4. `font.ttf` - Your custom terminal font.
5. `.zshrc` - Your Zsh configuration file which contains the `insert-alt-char` custom widget for typing with the `[NL]` button.

## Custom Shortcuts Included

This configuration comes with the following custom shortcuts pre-configured:
- **`[NL]` Button (Tap & Enter)**: Acts as a New Line button. Hold it to turn Red (ALT mode) and type normally; pressing Enter in this mode creates a new line without executing the command.
- **`ESC + c`**: Instantly clears the screen.
- **`ESC + e`**: Instantly exits Termux.

## How to Install/Restore

If you ever reinstall Termux or want to move this setup to a new device, follow these steps:

### 1. Basic Termux Setup
Make sure you have `zsh` and `oh-my-zsh` installed. If not, run this in Termux:
```bash
pkg update -y
pkg install zsh git -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 2. Copy Theme File
Copy the custom Zsh theme into the oh-my-zsh themes directory:
```bash
cp /storage/emulated/0/xxtheme/theader.zsh-theme ~/.oh-my-zsh/custom/themes/
```

### 3. Copy Termux Settings
Restore your Termux keyboard, fonts, and colors:
```bash
mkdir -p ~/.termux
cp /storage/emulated/0/xxtheme/termux.properties ~/.termux/
cp /storage/emulated/0/xxtheme/colors.properties ~/.termux/
cp /storage/emulated/0/xxtheme/font.ttf ~/.termux/
```
After copying, reload the settings by typing:
```bash
termux-reload-settings
```

### 4. Restore Zshrc
Restore your `.zshrc` file to get your aliases and the `[NL]` smart Enter logic:
```bash
cp /storage/emulated/0/xxtheme/.zshrc ~/
```

### 5. Final Step
Restart Termux, or run:
```bash
source ~/.zshrc
```
Your beautiful prompt and your functional `[NL]` Red hold button will be back in action!
