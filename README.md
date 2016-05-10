## [`pisces ☯ 双鱼`](https://en.wikipedia.org/wiki/Pisces_(astrology))

[![](https://img.shields.io/badge/fish--shell-2.3b2-blue.svg)](https://github.com/fish-shell/fish-shell/releases/tag/2.3b2)
[![](https://img.shields.io/badge/license-LGPLv3-blue.svg)](https://www.tldrlegal.com/l/lgpl-3.0)
[![](http://github-release-version.herokuapp.com/github/laughedelic/pisces/release.svg)](https://github.com/laughedelic/pisces/releases/latest)
[![](https://img.shields.io/badge/contact-gitter_chat-dd1054.svg)](https://gitter.im/laughedelic/pisces)


_pisces_ `['paɪsiz]` is a plugin for [fish](http://fish.sh) that helps you to work with paired symbols like `()` and `''` in the command line. Just as in your favorite text editor!

### Features

Here `|` denotes the current cursor position. No manual cursor motion involved :sparkles:

- autocloses pair symbol:  
  `... |` + <kbd>(</kbd> ⇒  
  `... (|)`
- skips the closing symbol:  
  `...|)` + <kbd>)</kbd> ⇒  
  `... )|`
- removes empty pairs:  
  `...([|])` + <kbd>backspace</kbd> ⇒  
  `...(|)` + <kbd>backspace</kbd> ⇒  
  `...|`
- the set of pairs is configurable

Some ideas for further development:

- [ ] ignore escaped symbols: `...\|` + `(` => `...\(|`
- [ ] remove an empty pair even when the cursor is after it (or go inside?)
- [ ] conditional autoclosing (don't autoclose if the cursor is before/after certain symbols)

If you have any other ideas or feature requests, open an issue or write me in the [chat](https://gitter.im/laughedelic/pisces).

### Installation

Use [fisherman](https://github.com/fisherman/fisherman):

```fish
fisher install laughedelic/pisces
```

Then open a new fish session to reload keybindings.

This plugin **requires fish v2.3** (currently in [beta](https://github.com/fish-shell/fish-shell/releases/tag/2.3b2)) for two reasons:
- there was a bug [#2210](https://github.com/fish-shell/fish-shell/issues/2210) in v2.2 which would brake quotes handling
- the new `string` builtin is just radical and simplifies life a lot


#### Changing the set of pairs

You can set the `$pisces_pairs` universal variable and launch a new fish session to reload key bindings:

```fish
set -U pisces_pairs $pisces_pairs '<,>' '«,»'
```

Note that at the moment _pisces_ works correctly only with single-symbol delimiters.

The default set of pairs:

- `()` parenthesis
- `[]` brackets
- `{}` braces
- `""` double quotes
- `''` single quotes
