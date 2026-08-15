# Dotfiles
Table of Contents:
- [DWM](#DWM)
- [Sway](#Sway%20+%20alacritty%20+%20waybar%20+%20hyprlock)
- [NVIM](#nvim)
- [Ghostty](#ghostty)
- [PowerShell](#powershell)
- [Terminal Themes](#terminal%20themes)

### DWM

Personal config file for [dwm](https://dwm.suckless.org/) in `config.def.h`.
`dwmblock_async_config` is well, the config for [dwmblocks-async](https://github.com/UtkarshVerma/dwmblocks-async).
There is also a repository for scripts that I use with dwmblocks-async [here](https://github.com/TcPirate1/dwm_blocks_scripts).

**Patches**

- [statuscmd](https://dwm.suckless.org/patches/statuscmd/) so that dwmblocks can be used.
- [Centred title](https://dwm.suckless.org/patches/truecenteredtitle/) to well centre the title.

### Sway + alacritty + waybar + hyprlock
Config files for [Sway, the WM](https://swaywm.org/). Alacritty, the terminal. Waybar, the statusbar and hyprlock for the lock screen.
Comes from [archcraft's](https://wiki.archcraft.io/docs/wayland-compositors/sway/) but with slight changes.
- Works differently from DWM on how it places it's windows. Only has horizontal and vertical when opening, which can then be rearranged.
- Removed bluetooth packages and operations from waybar.

### nvim
Config files for the text editor [nvim](https://neovim.io/).

Uses [kickstart-nvim](https://github.com/nvim-lua/kickstart.nvim) repo as a base.
- Clipboards require a clipboard package to be installed.
- Otherwise, `vim.g.clipboard = 'osc52'` will work fine for copy and pasting.
- Note: There is a bit of lag when using Neovim's pasting operations and its faster to just use the terminal's copy paste.

### ghostty
Configs for the terminal emulator, [ghostty](https://ghostty.org/).

### PowerShell
Configs for the windows shell, [PowerShell](https://learn.microsoft.com/en-us/powershell/scripting/install/install-powershell-on-windows?view=powershell-7.6).

### Terminal Themes
- Oh my posh night-owl theme. Atomic is good if the terminal size is large enough.
