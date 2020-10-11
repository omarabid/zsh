# Clipboard

Zsh clipboard plugin that adds cross-platform helper functions to access the system clipboard. Works on macOS, X11 (and Wayland), Cygwin, MSYS2, and WSL.


1. `pbcopy` - pipe something to this function, e.g. `echo Hello world | pbcopy`, and it will be copied to system clipboard. 
2. `pbpaste` - show the contents of the system clipboard, e.g. `pbpaste | grep Hello`. 
3. `clip` - a wrapper around the two previous functions. If you do not pipe something to it, the function will show the clipboard contents; otherwise, it will copy something to the clipboard.

# How to install

## [oh-my-zsh](http://github.com/robbyrussell/oh-my-zsh)

* Download the script or clone this repository in [oh-my-zsh](http://github.com/robbyrussell/oh-my-zsh) plugins directory:

```sh
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zpm-zsh/clipboard.git
```

* Activate the plugin in `~/.zshrc`:

```sh
plugins=( [plugins...] clipboard [plugins...])
```

* Restart shell

## [zpm](https://github.com/zpm-zsh/zpm)

Add the following to your .zshrc file somewhere after you source zpm.

```sh
zpm load zpm-zsh/clipboard
```

## [antigen](https://github.com/zsh-users/antigen)

Add `antigen bundle zpm-zsh/clipboard` to your .zshrc where you're adding your other plugins. Antigen will clone the plugin for you and add it to your antigen setup the next time you start a new shell.

## [prezto](https://github.com/sorin-ionescu/prezto)

For most people the easiest way to use zshmarks with [prezto](https://github.com/sorin-ionescu/prezto) is to manually clone the zshmarks repo to a directory of your choice (e.g. /usr/local or ~/bin) and symlink the zshmarks folder into your zpretzo/modules folder:

```sh
ln -s ~/bin/clipboard ~/.zprezto/modules/clipboard
```

Alternatively, you can add the zshmarks repository as a submodule to your prezto repo by manually editing the '.gitmodules' file:

```ini
[submodule "modules/clipboard"]
        path = modules/clipboard
        url = https://github.com/zpm-zsh/clipboard.git
```

Then make sure you activate the plugin in your .zpreztorc file:

```sh
zstyle ':prezto:load' pmodule \
clipboard \
...
```

## [zplug](https://github.com/zplug/zplug)

Add the following to your .zshrc file somewhere after you source zplug.

```sh
zplug "zpm-zsh/clipboard"
```
