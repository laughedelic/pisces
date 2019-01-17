## [`pisces ☯ 双鱼`](https://en.wikipedia.org/wiki/Pisces_(astrology))

[![](https://img.shields.io/badge/fish--shell-2.3+-blue.svg)](https://github.com/fish-shell/fish-shell/releases)
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


### Installation

* Using [Fisher](https://github.com/jorgebucaran/fisher):
  ```fish
  fisher add laughedelic/pisces
  ```

* Using [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish):
  ```fish
  omf install pisces
  ```

> **NOTE:**  
> The _minimum recommended_ version of fish is v2.6, because
> - it has a feature called [_bracketed (a.k.a safe) paste_](https://github.com/fish-shell/fish-shell/pull/3871) which solves the problem with pasting strings containing paired symbols (they get autoclosed), see [#6](https://github.com/laughedelic/pisces/issues/6) for details.
>
> The _minimum required_ version of fish is v2.3, because
> - there was a bug [#2210](https://github.com/fish-shell/fish-shell/issues/2210) in v2.2 which would brake quotes handling
> - it uses `string` builtin which was introduced in v2.3


#### Changing the set of pairs

You can set the `$pisces_pairs` universal variable and launch a new fish session to reload key bindings:

```fish
set -U pisces_pairs $pisces_pairs '<,>' '`,`' '«,»'
```

Note that at the moment _pisces_ works correctly only with single-symbol delimiters.

The default set of pairs:

- `(,)` parenthesis
- `[,]` brackets
- `{,}` braces
- `","` double quotes
- `','` single quotes

### Roadmap

Here are some ideas for further development (some are already implemented):

- autoclosing:
  + [x] ignore closing `"` when trying to autocomplete a var (see [v0.3.0](https://github.com/laughedelic/pisces/releases/tag/v0.3.0))
  + [ ] [#5](https://github.com/laughedelic/pisces/pull/5) (WIP): context-dependent autoclosing. Some particular cases:
    * [x] **?** autoclose only when surrounded by non-word characters
    * [x] ignore escaped symbols: `...\|` + <kbd>(</kbd> => `...\(|` (or autoclose them?)
    * [ ] **?** ignore single quote (apostrophe) in the comments
    + [x] multi-character pairs, similar to simple code-snippets: `for | end`, `if | end`, `begin; |; end`, etc.

- empty pairs removal:
  + [ ] treat pair as empty if it has only whitespaces inside: `...(|  )` + <kbd>backspace</kbd> ⇒ `...|`
  + [ ] ~~remove an empty pair even when the cursor is after it (or go inside?)~~: `...()|` + <kbd>backspace</kbd> ⇒ `...|` or `...(|)` (this is probably confusing)
  + [ ] key bindings for `^W` and similar? `foo bar(|)` + <kbd>ctrl</kbd><kbd>w</kbd> ⇒ `foo |`

- [ ] optional <kbd>alt</kbd>+symbol keybindings that do something else, for example:
  + surround the current token
  + just insert single symbol
  + jump after the closing symbol

- [x] [#3](https://github.com/laughedelic/pisces/pull/3): support for vi-mode
- [ ] autoreload on the `$pisces_pairs` var changes
- [ ] restore previous keybindings instead of erasing them

If you have any other ideas or feature requests, feel free to open an issue or just write me in the [chat](https://gitter.im/laughedelic/pisces).
