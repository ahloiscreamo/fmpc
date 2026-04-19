<img width="1626" height="933" alt="Screenshot from 2026-04-16 14-59-09" src="https://github.com/user-attachments/assets/6e1a288b-85ec-4843-80ae-104f148b082a" />
<img width="641" height="1034" alt="Screenshot from 2026-04-16 14-53-12" src="https://github.com/user-attachments/assets/75b0471b-430d-4219-a04e-b3f9b430aec5" />

# fmpc - Fast MPC Browser
A minimalist, high-performance TUI browser for MPD using `fzf` and `ueberzugpp`.

## Features
* **Cover Art**: Renders album art using Ueberzug++.
* **Layouts**: Supports "Right" or "Bottom" preview modes (centered).
* **Search**: Uses `fzf` for instant library filtering.
* **Selection**: Select multiple tracks or albums with TAB to queue them.
* **Sync**: Auto-selects the currently playing song on startup & follow-focus song.
* **UI**: Simple ANSI colors with grey dividers for a cleaner look.

## Dependencies
| Dependency | Role |
|---|---|
| `mpd` | Music daemon — manages playback and your library |
| `mpc` | CLI client used internally to control MPD |
| `fzf` | Fuzzy finder powering the search and browser UI |
| `ueberzugpp` | Renders album art in the terminal |
| `ffmpeg` | Extracts embedded cover art from audio files |
| Nerd Fonts | Required for icons in the UI |

## Installation

1. Clone the repository:
```bash
git clone https://github.com/user/fmpc && cd fmpc
```

2. Run the install script:
```bash
bash install.sh
```

> **Note:** A custom install location can be passed as an argument: `bash install.sh /custom/path`.
> For contributors, `--dev` installs via symlinks so edits to the repo take effect immediately.

3. Configure fmpc by creating `~/.config/fmpc/config`:
```bash
# vim: set ft=bash:
export MUSIC_DIR="/path/to/your/music"  # defaults to your mpd.conf music_directory
export PREVIEW_POS="right"              # right|bottom
export PREVIEW_SIZE="50%"
```

> **Note:** Never edit the scripts directly for configuration — use the config file above so your
> settings are preserved across updates and reinstalls.

## Usage

```bash
fmpc
```

### Keybindings

| Key | Action |
|---|---|
| **Enter** | Play highlighted song |
| **Tab** | Select/Deselect multiple songs |
| **Ctrl-x** | Play all selected songs |
| **Ctrl-f** | Search for currently playing song |
| **Ctrl-p** | Toggle play/pause |
| **Ctrl-n** | Next track |
| **Ctrl-b** | Previous track |
| **Ctrl-u** | Update MPD database |
| **Esc** | Clear search / reset view |
| **Ctrl-q** | Quit |
