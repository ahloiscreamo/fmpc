
<img width="1643" height="984" alt="Screenshot from 2026-01-26 17-22-09" src="https://github.com/user-attachments/assets/f1c1d27e-9bdf-4620-b286-efb26cefec46" />

# fmpc - Fast MPC Browser

A minimalist, high-performance TUI browser for MPD using `fzf` and `ueberzugpp`.

## Features

* 󰋩 **Cover Art**: Instant album art rendering via Ueberzug++.
*  **Fuzzy Search**: Instant library filtering with `fzf`.
* 󱗼 **Multi-Selection**: Queue multiple tracks or albums at once.
* 󰲋 **Smart Sync**: Jump to the currently playing song on launch.
* 󰏘 **ANSI Colors**: Clean magenta/white split for directories and files.

## Dependencies

* `mpd` / `mpc`
* `fzf`
* `ueberzugpp`
* `ffmpeg` (for cover extraction)
* `Nerd Fonts`

## Installation

1. Clone the repository and move both scripts to your bin directory:
```bash
chmod +x fmpc fmpc-play
cp fmpc fmpc-play ~/.local/bin/

```


2. Configure your music path in the `fmpc` script:
```bash
export MUSIC_DIR="/path/to/your/music"

```



## Usage

Launch the browser:

```bash
fmpc

```

### Keybindings/--help

| Key | Action |
| --- | --- |
| 󰌑  **ENTER** | Play highlighted song |
| 󰓗 **TAB** | Select/Deselect multiple songs |
| 󱊖 **Ctrl-x** | Play all selected songs |
| 󰍉 **Ctrl-f** | Search for current playing song |
| 󰐊 **Ctrl-p** | Toggle Play/Pause |
| 󰒭 **Ctrl-n** | Next Track |
| 󰒮 **Ctrl-b** | Previous Track |
| 󱊄 **Ctrl-u** | Update MPD database |
| 󱊁 **ESC** | Clear search / Reset view |
| 󰈆 **Ctrl-q** | Quit |

