# [`pisces ☯ 双鱼`](https://en.wikipedia.org/wiki/Pisces_(astrology))

[![](https://img.shields.io/github/v/release/laughedelic/pisces?color=brightgreen)](https://github.com/laughedelic/pisces/releases/latest)
[![](https://img.shields.io/badge/fish--shell-2.3+-blue.svg)](https://github.com/fish-shell/fish-shell/releases)
[![](https://img.shields.io/badge/license-LGPLv3-blue.svg)](https://www.tldrlegal.com/l/lgpl-3.0)
[![](https://img.shields.io/badge/contact-gitter_chat-dd1054.svg)](https://gitter.im/laughedelic/pisces)

_pisces_ `['paɪsiz]` is a plugin for [fish](https://fishshell.com/) that helps you to work with paired symbols like `()` and `''` in the command line. Similar to your favorite text editor!

## Features

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
- the set of pairs is configurable (see below)

## Installation

<details>
<summary>Notes on fish 2.x compatibility</summary>

> The _minimum recommended_ version of fish is v2.6, because
> - it has a feature called [_bracketed (a.k.a safe) paste_](https://github.com/fish-shell/fish-shell/pull/3871) which solves the problem with pasting strings containing paired symbols (they get autoclosed), see [#6](https://github.com/laughedelic/pisces/issues/6) for details.
>
> The _minimum required_ version of fish is v2.3, because
> - there was a bug [#2210](https://github.com/fish-shell/fish-shell/issues/2210) in v2.2 which would brake quotes handling
> - it uses `string` builtin which was introduced in v2.3

</details>

- Using [Fisher](https://github.com/jorgebucaran/fisher):

  ```fish
  fisher install laughedelic/pisces
  ```

- Using [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish):

  ```fish
  omf install pisces
  ```

  Notice that you will need to _restart_ fish to get this new installation working. This is specific to the way oh-my-fish handles installation.

## Configuration

### Only completing at the end of the line

To disable completing pairs unless the cursor is at the end of the line, set the `$pisces_only_insert_at_eol` variable:

```fish
set -U pisces_only_insert_at_eol 1
```

### Changing the set of pairs

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
