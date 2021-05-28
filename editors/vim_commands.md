- [Useful basic vim commands](#useful-basic-vim-commands)
  - [Insert Mode](#insert-mode)
  - [Visual Mode](#visual-mode)
  - [Cursor Movement](#cursor-movement)
    - [1. Lines](#1-lines)
  - [Editing](#editing)
    - [1. Characters](#1-characters)
    - [2. Words](#2-words)
    - [3. Lines](#3-lines)
    - [4. Others](#4-others)
  - [Macros](#macros)

# Useful basic vim commands

## Insert Mode

- **i** - insert before the cursor
- **I** - insert at the beginning of the line
- **a** - insert after the cursor
- **A** - insert at the end of the line
- **o** - append a new line below the current line
- **esc** - exit insert mode
- **jk** - Shortcut key combo for exiting insert mode

## Visual Mode

- **v** - start visual mode
- **V** - start linewise visual mode
- **o** - move to the other end of marked area

## Cursor Movement

- **h** - move cursor left
- **j** - move cursor down
- **k** - move cursor up
- **l** - move cursor right
- **H** - move to top of the screen

### 1. Lines

- **0** - jump to the start of the line
- **$** - jump to the end of the line
- **gg** - go to the first line of the document
- **G** - go to the last line of the document
- **5gg** - go to the line 5

## Editing

### 1. Characters

- **x** - delete the current character

### 2. Words

- **dw** - delete a word forward
- **db** - delete a word backward
- **r** - replace a single character
- **ciw** - change/replace entire word
- **cw** - change/replace to the end of the word

### 3. Lines

- **dd** - delete a line
- **cc** - change/replace entire line
- **S** - delete line and subsitute text (same as cc)

### 4. Others

- **u** - undo
- **U** - restore(undo) last change
- **Ctrl + r** - redo
- **.** - repeat last command

## Macros

1. Press `q` to let the vim know you want to record macro.
2. Name the macro recording with any letter for example `l` and now the recording starts.
3. Perform vim actions.
4. Stop recording with `q` and now all actions are recorded under macro `@l`.
5. Call the macro with `@l`. Once the macro has been called, you can just call the last used macro with `@@`.
6. If you want to call it 10 times, then use `10@l` or `10@@`.