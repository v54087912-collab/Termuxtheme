# 🚀 Ultimate Termux Custom Theme & Setup

Welcome to the ultimate customization setup for Termux! If you code, hack, or run scripts on your Android device using Termux, this environment is built to drastically improve your speed, workflow, and terminal aesthetics.

## 📸 Screenshots

![Termux Theme Preview 1](https://i.ibb.co/mr2MYvmq/file-217.jpg)

![Termux Theme Preview 2](https://i.ibb.co/9HRbChdx/file-216.jpg)

## ✨ Features

- **Beautiful 2-Line Prompt:** A highly customized Zsh theme (`theader`) featuring a clean minimal look, beautiful `⋙` arrows, your username, hostname, and the current working directory.
- **Smart `[NL]` (New Line) Button Hack:** Solves the biggest pain point of mobile typing. Tap to add a new line, or hold (turns Red) to type characters seamlessly without executing the command, powered by a custom Zsh widget.
- **Ergonomic Keyboard Layout:** The extra-keys row has been heavily modified for peak ergonomics. The `UP` arrow is placed directly above the `DOWN` arrow for PC-like navigation, and the `[NL]` button sits right next to `Backspace`.
- **Pro Shortcuts:** Custom shortcuts mapped directly into Zsh:
  - `ESC + c` instantly clears the screen.
  - `ESC + e` instantly exits Termux.
- **Beautiful Typography & Colors:** Includes custom `colors.properties` and a beautifully patched `font.ttf` to make your terminal look stunning.

---

## ⚙️ Installation & Setup Guide

If you want to install this setup on a fresh Termux instance, follow these simple steps:

### 1. Basic Termux Setup
Make sure you have `zsh` and `oh-my-zsh` installed. If not, open Termux and run:
```bash
pkg update -y
pkg install zsh git -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 2. Clone This Repository
Clone this repo to your local device:
```bash
git clone https://github.com/v54087912-collab/Termuxtheme.git ~/Termuxtheme
cd ~/Termuxtheme
```

### 3. Apply the Theme File
Copy the custom Zsh theme into the oh-my-zsh themes directory:
```bash
cp theader.zsh-theme ~/.oh-my-zsh/custom/themes/
```

### 4. Restore Termux Settings (Keyboard, Fonts, Colors)
Create the Termux folder (if missing) and copy the settings:
```bash
mkdir -p ~/.termux
cp termux.properties ~/.termux/
cp colors.properties ~/.termux/
cp font.ttf ~/.termux/
```
Reload the Termux settings so the keyboard and colors take effect:
```bash
termux-reload-settings
```

### 5. Restore `.zshrc`
Copy the included Zsh configuration file to enable the smart `[NL]` widget and shortcuts:
```bash
cp .zshrc ~/
```

### 6. Final Step
Restart Termux completely, or reload your shell by running:
```bash
source ~/.zshrc
```

Enjoy your brand-new, powerful, and beautiful Termux environment! 🎉
