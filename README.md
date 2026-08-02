<img width="1710" height="988" alt="20260802_22h26m45s_grim" src="https://github.com/user-attachments/assets/1db58832-c4ec-4d94-a790-40de4782d4f2" />
<img width="888" height="1408" alt="20260802_22h32m55s_grim" src="https://github.com/user-attachments/assets/89ea3c85-180c-4086-a7f3-6a11d81c0dea" />

# fmpc - Fast MPC Browser
A minimalist, high-performance TUI browser for MPD using `fzf` and `ueberzugpp`.

## Features
* **Cover Art Rendering**: Supports high-performance image rendering (including **Sixel** out of the box).
* **Flexible Layouts**: Supports "Right" or "Bottom" preview modes with custom centering.
* **Instant Filtering**: Uses `fzf` for super fast library searching.
* **Batch Selection**: Select multiple tracks or folders with `TAB` to queue them.
* **Synchronization**: Auto-selects the currently playing song on startup & supports follow-focus mode.
* **Minimalist UI**: Simple ANSI colors with grey dividers for a cleaner terminal aesthetic.

## Dependencies
| Dependency | Role |
|---|---|
| `mpd` | Music daemon — manages playback and your library |
| `mpc` | CLI client used internally to control MPD |
| `fzf` | Fuzzy finder powering the search and browser UI |
| `ueberzugpp` | Renders album art in the terminal (supports sixel, kitty, iterm2, etc.) |
| `ffmpeg` | Extracts embedded cover art and queries dimensions (`ffprobe`) |
| Nerd Fonts | Required for icons in the UI |

## Installation

1. Clone the repository:
```bash
git clone https://github.com/ahloiscreamo/fmpc && cd fmpc
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
export MUSIC_DIR="/path/to/your/music"       # defaults to your mpd.conf music_directory
export PREVIEW_POS="right"                   # right|bottom
export PREVIEW_SIZE="50%"

# --- Optional Advanced Image Tuning ---

# Image rendering protocol (sixel, kitty, iterm2, x11, wayland, chafa)
export UB_OUTPUT="sixel"                     # defaults to sixel

# Custom offsets for bottom layout (PREVIEW_POS="bottom")
# export BOTTOM_OFFSET_Y="0"                 # push image down from top (rows)
# export BOTTOM_H_ADJUST="0"                 # shrink image height to fit (rows)
# export BOTTOM_MANUAL_ADJUST="2"            # nudge right to center the image (columns)

# Custom offsets for right layout (PREVIEW_POS="right")
# export RIGHT_OFFSET_Y="0"                  # push image down from top (rows)
# export RIGHT_H_ADJUST="0"                  # shrink image height to fit (rows)
```

> **Note:** Never edit the scripts directly for configuration — use the config file above so your settings are preserved across updates and reinstalls.

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
| **?** | Show shortcut help modal |
| **Esc** | Clear search / reset view |
| **Ctrl-q** | Quit |
