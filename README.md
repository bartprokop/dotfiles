# dotfiles
Finally I decided to have my own dot files...

## First setup

```
ssh-keygen -t ed25519
```

### Homebrew

```bash
==> Next steps:
- Run these commands in your terminal to add Homebrew to your PATH:
    echo >> /Users/bart/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/bart/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
- Run brew help to get started
- Further documentation:
    https://docs.brew.sh
```




The Four Horsemen of the Dotpocalypse

There are four important dotfiles zsh loads (in order) depending on how you connect to a machine:

~/.zshenv
This first dotfile is ALWAYS loaded for your user account for all shells.

What does that even mean? The answer is complex, and I’m trying to keep this short, but sometimes, you will open a shell that is not considered a login or even an interactive shell.

Does your brain hurt trying to imagine when that might happen? Mine too. So, I tend to put all my environment variables in this file, especially updates to PATH, and not think too much more about it.

I can’t overstate how useful this is. I’m unsure why many tools default to updating .zshrc or .zprofile to add themselves to the PATH.

~/.zprofile
This dotfile is loaded next for login shells.

What is a login shell? It’s the shell you get when you first log in.

It’s a good dotfile for running one-time commands, but it’s not loaded again when you open more terminals on the machine. It’s also not loaded by remote commands run over ssh (usually).

If the machine is your primary workstation, you’ve probably never had to worry about this, but if you tried to run a command remotely and wondered why it wasn’t found or didn’t work the same as when you ran it directly, it’s probably because this file didn’t get loaded.

Use sparingly. Too many tools default to updating this file when they should be updating the .zshenv file.

~/.zshrc
Loaded next for interactive shells. This is you at the terminal. A better default dotfile for certain updates, such as PROMPT, because this is the only time PROMPT really matters.

Again, if the machine in question is your primary workstation, it doesn’t matter until it does.

~/.zlogin
Loaded last for all interactive shells that result from a login.

A pretty rare, specific use case. It is handy when you need something to run when you log in (versus just opening a new terminal) that also depends on something from .zshrc.

Sources:

- https://medium.com/@seandodell/zsh-dotfiles-on-mac-12315e204bb0
