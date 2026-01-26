
<img width="634" height="1030" alt="Screenshot from 2026-01-26 21-37-42" src="https://github.com/user-attachments/assets/cb0c57ce-4814-4d33-9752-847d4df771a2" />
<img width="1618" height="1009" alt="Screenshot from 2026-01-26 21-45-24" src="https://github.com/user-attachments/assets/021ebc81-c69a-494f-aaa0-219cdff7db63" />

# fmpc - Fast MPC Browser

A minimalist, high-performance TUI browser for MPD using `fzf` and `ueberzugpp`.

## Features

* 󰋩 **Cover Art**: Renders album art using Ueberzug++.
* 󰫙 **Layouts**: Supports "Right" or "Bottom" preview modes (centered).
*  **Search**: Uses `fzf` for instant library filtering.
* 󱗼 **Selection**: Select multiple tracks or albums with TAB to queue them.
* 󰲋 **Sync**: Auto-selects the currently playing song on startup.
* 󰏘 **UI**: Simple ANSI colors with grey dividers for a cleaner look.

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

2. Open `fmpc` and configure your music path:

```bash
export MUSIC_DIR="/path/to/your/music"

```

3. Choose your preferred layout at the top of the script:

```bash
export PREVIEW_POS="right" # Change to "bottom" for centered view

```

## Usage

Launch the browser:

```bash
fmpc

```

### Keybindings/--help

| Key | Action |
| --- | --- |
| 󰌑 **ENTER** | Play highlighted song |
| 󰓗 **TAB** | Select/Deselect multiple songs |
| 󱊖 **Ctrl-x** | Play all selected songs |
| 󰍉 **Ctrl-f** | Search for current playing song |
| 󰐊 **Ctrl-p** | Toggle Play/Pause |
| 󰒭 **Ctrl-n** | Next Track |
| 󰒮 **Ctrl-b** | Previous Track |
| 󱊄 **Ctrl-u** | Update MPD database |
| 󱊁 **ESC** | Clear search / Reset view |
| 󰈆 **Ctrl-q** | Quit |

