# Neovim Keybindings Cheatsheet (LazyVim)

Note: this is exhaustive. Consider trimming this into a "daily keys" version once usage stabilizes.

**Leader**: `<space>` | **Local Leader**: `\`

---

## Custom Keybindings (plugins.lua)

---

### Sidekick

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>aa` | n | Sidekick Toggle CLI |
| `<leader>ac` | n | Sidekick Toggle Claude |
| `<leader>ao` | n | Sidekick Toggle OpenCode |
| `<leader>as` | n | Sidekick Select CLI |
| `<leader>ap` | n, x | Sidekick Select Prompt |
| `<leader>at` | n, x | Sidekick Send This |
| `<leader>af` | n | Sidekick Send File |
| `<leader>av` | x | Sidekick Send Selection |

## LazyVim Default Keybindings

### General Navigation

| Key | Mode | Description |
|-----|------|-------------|
| `j` / `<Down>` | n, x | Move down |
| `k` / `<Up>` | n, x | Move up |
| `<C-h>` | n | Go to left window |
| `<C-j>` | n | Go to lower window |
| `<C-k>` | n | Go to upper window |
| `<C-l>` | n | Go to right window |

### Window Management

| Key | Mode | Description |
|-----|------|-------------|
| `<C-Up>` | n | Increase window height |
| `<C-Down>` | n | Decrease window height |
| `<C-Left>` | n | Decrease window width |
| `<C-Right>` | n | Increase window width |
| `<leader>-` | n | Split window below |
| `<leader>\|` | n | Split window right |
| `<leader>ws` | n | Split window below (alias) |
| `<leader>wv` | n | Split window right (alias) |
| `<leader>wd` | n | Delete window |
| `<leader>wm` | n | Toggle zoom mode |
| `<leader>uZ` | n | Toggle zoom mode |
| `<leader>uz` | n | Toggle zen mode |
| `<C-w><space>` | n | Window Hydra Mode (which-key) |

### Line Movement

| Key | Mode | Description |
|-----|------|-------------|
| `<A-j>` | n, i, v | Move line down |
| `<A-k>` | n, i, v | Move line up |

### Buffer Navigation

| Key | Mode | Description |
|-----|------|-------------|
| `<S-h>` | n | Previous buffer |
| `<S-l>` | n | Next buffer |
| `[b` | n | Previous buffer |
| `]b` | n | Next buffer |
| `[B` | n | Move buffer prev |
| `]B` | n | Move buffer next |
| `<leader>bb` | n | Switch to other buffer |
| `` <leader>` `` | n | Switch to other buffer |
| `<leader>bd` | n | Delete buffer |
| `<leader>bo` | n | Delete other buffers |
| `<leader>bD` | n | Delete buffer and window |
| `<leader>bl` | n | Delete buffers to the left |
| `<leader>br` | n | Delete buffers to the right |
| `<leader>bp` | n | Toggle pin |
| `<leader>bP` | n | Delete non-pinned buffers |

### Tab Management

| Key | Mode | Description |
|-----|------|-------------|
| `<leader><tab><tab>` | n | New tab |
| `<leader><tab>l` | n | Last tab |
| `<leader><tab>o` | n | Close other tabs |
| `<leader><tab>f` | n | First tab |
| `<leader><tab>]` | n | Next tab |
| `<leader><tab>[` | n | Previous tab |
| `gt` | n | Next tab |
| `gT` | n | Previous tab |
| `<leader><tab>d` | n | Close tab |

### Search & Replace

| Key | Mode | Description |
|-----|------|-------------|
| `<Esc>` | i, n, s | Escape and clear hlsearch |
| `<leader>ur` | n | Redraw / Clear hlsearch / Diff update |
| `n` | n, x, o | Next search result |
| `N` | n, x, o | Previous search result |
| `<leader>sr` | n, x | Search and replace (grug-far) |

### File Operations

| Key | Mode | Description |
|-----|------|-------------|
| `<C-s>` | i, x, n, s | Save file |
| `<leader>fn` | n | New file |
| `<leader>qq` | n | Quit all |

### Diagnostics & Errors

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>cd` | n | Line diagnostics |
| `]d` | n | Next diagnostic |
| `[d` | n | Previous diagnostic |
| `]e` | n | Next error |
| `[e` | n | Previous error |
| `]w` | n | Next warning |
| `[w` | n | Previous warning |

### LSP

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>cl` | n | LSP info |
| `gd` | n | Goto definition |
| `gr` | n | References |
| `gI` | n | Goto implementation |
| `gy` | n | Goto type definition |
| `gD` | n | Goto declaration |
| `K` | n | Hover |
| `gK` | n | Signature help |
| `<C-k>` | i | Signature help |
| `<leader>ca` | n, x | Code action |
| `<leader>cc` | n, x | Run codelens |
| `<leader>cC` | n | Refresh & display codelens |
| `<leader>cR` | n | Rename file |
| `<leader>cr` | n | Rename symbol |
| `<leader>cA` | n | Source action |
| `<leader>cf` | n, x | Format |
| `<leader>cF` | n, x | Format injected langs |
| `]]` | n | Next reference |
| `[[` | n | Previous reference |
| `<A-n>` | n | Next reference |
| `<A-p>` | n | Previous reference |
| `<leader>ss` | n | LSP symbols |
| `<leader>sS` | n | LSP workspace symbols |
| `gai` | n | Calls incoming |
| `gao` | n | Calls outgoing |

### Code Actions & Comments

| Key | Mode | Description |
|-----|------|-------------|
| `gco` | n | Add comment below |
| `gcO` | n | Add comment above |
| `gcc` | n | Toggle comment line |
| `gc` + motion | n, x | Toggle comment over motion/selection |
| `<leader>K` | n | Keywordprg |

### Quickfix & Location List

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>xl` | n | Location list |
| `<leader>xq` | n | Quickfix list |
| `<leader>xL` | n | Location list (Trouble) |
| `<leader>xQ` | n | Quickfix list (Trouble) |
| `[q` | n | Previous quickfix/trouble item |
| `]q` | n | Next quickfix/trouble item |

### Trouble

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>xx` | n | Diagnostics (Trouble) |
| `<leader>xX` | n | Buffer diagnostics (Trouble) |
| `<leader>cs` | n | Symbols (Trouble) |
| `<leader>cS` | n | LSP refs/defs (Trouble) |

### Todo Comments

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>st` | n | Todo |
| `<leader>sT` | n | Todo/Fix/Fixme |
| `<leader>xt` | n | Todo (Trouble) |
| `<leader>xT` | n | Todo/Fix/Fixme (Trouble) |
| `[t` | n | Previous todo comment |
| `]t` | n | Next todo comment |

### Toggle Options

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>uf` | n | Toggle auto format (global) |
| `<leader>uF` | n | Toggle auto format (buffer) |
| `<leader>us` | n | Toggle spelling |
| `<leader>uw` | n | Toggle wrap |
| `<leader>uL` | n | Toggle relative number |
| `<leader>ud` | n | Toggle diagnostics |
| `<leader>ul` | n | Toggle line numbers |
| `<leader>uc` | n | Toggle conceal level |
| `<leader>uA` | n | Toggle tabline |
| `<leader>uT` | n | Toggle treesitter highlight |
| `<leader>ub` | n | Toggle dark background |
| `<leader>uD` | n | Toggle dimming |
| `<leader>ua` | n | Toggle animations |
| `<leader>ug` | n | Toggle indent guides |
| `<leader>uS` | n | Toggle smooth scroll |
| `<leader>uh` | n | Toggle inlay hints |
| `<leader>un` | n | Dismiss all notifications |
| `<leader>uC` | n | Colorschemes |

### Profiler

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>dpp` | n | Toggle profiler |
| `<leader>dph` | n | Toggle profiler highlights |
| `<leader>dps` | n | Profiler scratch buffer |

### Git

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>gg` | n | Lazygit |
| `<leader>gL` | n | Git log (cwd) |
| `<leader>gl` | n | Git log |
| `<leader>gb` | n | Git blame line |
| `<leader>gf` | n | Git current file history |
| `<leader>gB` | n, x | Git browse (open) |
| `<leader>gY` | n, x | Git browse (copy) |
| `<leader>gs` | n | Git status |
| `<leader>gS` | n | Git stash |
| `<leader>gd` | n | Git diff (hunks) |
| `<leader>gD` | n | Git diff (origin) |
| `<leader>gi` | n | GitHub issues (open) |
| `<leader>gI` | n | GitHub issues (all) |
| `<leader>gp` | n | GitHub pull requests (open) |
| `<leader>gP` | n | GitHub pull requests (all) |
| `]h` | n | Next hunk |
| `[h` | n | Previous hunk |
| `<leader>ghs` | n | Stage hunk |
| `<leader>ghr` | n | Reset hunk |
| `<leader>ghp` | n | Preview hunk |
| `<leader>ghS` | n | Stage buffer |
| `<leader>ghR` | n | Reset buffer |
| `<leader>ghb` | n | Blame line |
| `<leader>ghB` | n | Browse line |

### Snacks / Picker

| Key | Mode | Description |
|-----|------|-------------|
| `<leader><space>` | n | Find files (root dir) |
| `<leader>,` | n | Buffers |
| `<leader>.` | n | Toggle scratch buffer |
| `<leader>/` | n | Grep (root dir) |
| `<leader>:` | n | Command history |
| `<leader>e` | n | Explorer (root dir) |
| `<leader>E` | n | Explorer (cwd) |
| `<leader>S` | n | Select scratch buffer |
| `<leader>n` | n | Notification history |

### File Finder

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>fb` | n | Buffers |
| `<leader>fB` | n | Buffers (all) |
| `<leader>fc` | n | Find config file |
| `<leader>fe` | n | Explorer (root dir) |
| `<leader>fE` | n | Explorer (cwd) |
| `<leader>ff` | n | Find files (root dir) |
| `<leader>fF` | n | Find files (cwd) |
| `<leader>fg` | n | Find files (git-files) |
| `<leader>fp` | n | Projects |
| `<leader>fr` | n | Recent |
| `<leader>fR` | n | Recent (cwd) |
| `<leader>fT` | n | Terminal (cwd) |
| `<leader>ft` | n | Terminal (root dir) |

### Search

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>s"` | n | Registers |
| `<leader>s/` | n | Search history |
| `<leader>sa` | n | Autocmds |
| `<leader>sb` | n | Buffer lines |
| `<leader>sB` | n | Grep open buffers |
| `<leader>sc` | n | Command history |
| `<leader>sC` | n | Commands |
| `<leader>sd` | n | Diagnostics |
| `<leader>sD` | n | Buffer diagnostics |
| `<leader>sg` | n | Grep (root dir) |
| `<leader>sG` | n | Grep (cwd) |
| `<leader>sh` | n | Help pages |
| `<leader>sH` | n | Highlights |
| `<leader>si` | n | Icons |
| `<leader>sj` | n | Jumps |
| `<leader>sk` | n | Keymaps |
| `<leader>sl` | n | Location list |
| `<leader>sm` | n | Marks |
| `<leader>sM` | n | Man pages |
| `<leader>sp` | n | Plugin spec |
| `<leader>sq` | n | Quickfix list |
| `<leader>sR` | n | Resume |
| `<leader>su` | n | Undotree |
| `<leader>sw` | n, x | Word (root dir) |
| `<leader>sW` | n, x | Word (cwd) |

### Marks & Jumps

| Key/Command | Mode | Description | Example |
|-------------|------|-------------|---------|
| `ma` | n | Set local mark `a` at cursor | `ma` |
| `mA` | n | Set global mark `A` (file mark) | `mA` |

| `'a` | n | Jump to mark `a` line | `'a` |
| `` `a `` | n | Jump to exact mark `a` position | `` `a `` |
| `:marks` | c | List marks | `:marks` |
| `:delmarks a` | c | Delete mark `a` | `:delmarks a` |
| `:delmarks a-z` | c | Delete range of marks | `:delmarks a-z` |
| `:delmarks!` | c | Delete all local marks in current buffer | `:delmarks!` |
| `<C-o>` | n | Go to older cursor position in jumplist | `<C-o>` |
| `<C-i>` | n | Go to newer cursor position in jumplist | `<C-i>` |
| `:jumps` | c | List jumplist entries | `:jumps` |
| `:clearjumps` | c | Clear jumplist for current window | `:clearjumps` |
| `<leader>sm` | n | Picker: marks | `<leader>sm` |
| `<leader>sj` | n | Picker: jumps | `<leader>sj` |

### Yanky

| Key | Mode | Description | Example |
|-----|------|-------------|---------|
| `<leader>p` | n, x | Open yank history | pick an older yank |
| `y` | n, x | Yank text | `yw` yanks a word |
| `p` | n, x | Put after cursor | paste after cursor |
| `P` | n, x | Put before cursor | paste before cursor |
| `gp` | n, x | Put after selection | paste after visual block |
| `gP` | n, x | Put before selection | paste before visual block |
| `[y` | n | Cycle forward through yank history | `p` then `[y` |
| `]y` | n | Cycle backward through yank history | `p` then `]y` |
| `]p` | n | Put indented after cursor (linewise) | paste as next line |
| `[p` | n | Put indented before cursor (linewise) | paste as previous line |
| `]P` | n | Put indented after cursor (linewise) | paste block below |
| `[P` | n | Put indented before cursor (linewise) | paste block above |
| `>p` | n | Put and indent right | paste then shift right |
| `<p` | n | Put and indent left | paste then shift left |
| `>P` | n | Put before and indent right | paste before, shift right |
| `<P` | n | Put before and indent left | paste before, shift left |
| `=p` | n | Put after applying filter (reindent) | paste then reindent |
| `=P` | n | Put before applying filter (reindent) | paste then reindent |

### Mini-surround

| Key | Mode | Description | Example |
|-----|------|-------------|---------|
| `gsa` | n, x | Add surrounding | `gsa` `iw` `"` for "word" |
| `gsd` | n | Delete surrounding | `gsd"` removes quotes |
| `gsr` | n | Replace surrounding | `gsr]` changes () to [] |
| `gsf` | n | Find surrounding (right) | `gsf)` jumps to `)` |
| `gsF` | n | Find surrounding (left) | `gsF(` jumps to `(` |
| `gsh` | n | Highlight surrounding | `gsh"` highlights quotes |
| `gsn` | n | Update search range | `gsn` then `200` |
| `t` | add/replace | Tag surrounding | `gsa` `iw` `t` then `h2` |
| `f` | add/replace | Function call | `gsa` `iw` `f` then `trim` |
| `?` | add/replace | Prompted pair | `gsa` `iw` `?` then `/*` `*/` |

### Flash

| Key | Mode | Description |
|-----|------|-------------|
| `s` | n, o, x | Flash |
| `S` | n, o, x | Flash treesitter |
| `r` | o | Remote flash |
| `R` | o, x | Treesitter search |
| `<C-s>` | c | Toggle flash search |
| `<C-space>` | n, o, x | Treesitter incremental selection |

### Terminal

| Key | Mode | Description |
|-----|------|-------------|
| `<C-/>` | n, t | Terminal (root dir) |
| `<C-_>` | n, t | Terminal (which_key_ignore) |

### Noice

| Key | Mode | Description |
|-----|------|-------------|
| `<C-b>` | n, i, s | Scroll backward |
| `<C-f>` | n, i, s | Scroll forward |
| `<leader>sn` | n | +noice |
| `<leader>sna` | n | Noice all |
| `<leader>snd` | n | Dismiss all |
| `<leader>snh` | n | Noice history |
| `<leader>snl` | n | Noice last message |
| `<leader>snt` | n | Noice picker |
| `<S-Enter>` | c | Redirect cmdline |

### Session (Persistence)

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>qs` | n | Restore session |
| `<leader>qS` | n | Select session |
| `<leader>ql` | n | Restore last session |
| `<leader>qd` | n | Don't save current session |

### Which-Key

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>?` | n | Buffer keymaps |

### Lazy & LazyVim

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>l` | n | Lazy |
| `<leader>L` | n | LazyVim changelog |
| `<leader>ui` | n | Inspect pos |
| `<leader>uI` | n | Inspect tree |

### Mason

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>cm` | n | Mason |

### Debugging (DAP)

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>db` | n | Toggle breakpoint |
| `<leader>dB` | n | Conditional breakpoint |
| `<leader>dc` | n | Continue / Start debugging |
| `<leader>di` | n | Step into |
| `<leader>do` | n | Step out |
| `<leader>dO` | n | Step over |
| `<leader>dr` | n | Toggle REPL |
| `<leader>dl` | n | Run last |
| `<leader>du` | n | Toggle DAP UI |
| `<leader>de` | n | Evaluate expression |
| `<leader>dw` | n | Widgets |
| `<leader>dp` | n | Pause |
| `<leader>dt` | n | Terminate |

### Testing (Neotest)

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>tt` | n | Run file |
| `<leader>tT` | n | Run all test files |
| `<leader>tr` | n | Run nearest test |
| `<leader>tl` | n | Run last test |
| `<leader>ts` | n | Toggle summary |
| `<leader>to` | n | Show output |
| `<leader>tO` | n | Toggle output panel |
| `<leader>tw` | n | Toggle watch mode |
| `<leader>td` | n | Debug nearest test |
| `<leader>tS` | n | Stop |

---

## Mode Legend

| Mode  | Description           |
| ----- | --------------------- |
| **n** | Normal mode           |
| **i** | Insert mode           |
| **v** | Visual mode           |
| **x** | Visual/Select mode    |
| **o** | Operator-pending mode |
| **t** | Terminal mode         |
| **c** | Command-line mode     |
| **s** | Select mode           |

---

*Generated from LazyVim defaults (lazyvim.org) and local plugin configurations.*

