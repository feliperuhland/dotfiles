# dotfiles

Sway-based desktop configuration managed with Ansible and Jinja2 templates.

## Setup

```sh
git clone <repo> ~/dotfiles
cd ~/dotfiles
cp local_config.yaml.example local_config.yaml
# edit local_config.yaml with your machine settings
./dotfiles install
dotfiles
```

## Usage

```sh
dotfiles          # sync and apply all configs
dotfiles install  # (re)install the dotfiles command to ~/.local/bin
dotfiles system   # root-level config: lid/sleep policy, hibernation (sudo)
```

## Power management

`config.power` in `local_config.yaml` drives both sides:

- sway (`dotfiles`): swayidle locks, powers screens off and optionally
  sleeps after per-state idle times; `scripts/power-state` reports the
  state (`docked`, `ac` or `battery`, docked meaning logind's `Docked`).
  Every sleep locks first via `before-sleep`.
- system (`dotfiles system`): logind lid actions per state,
  `HibernateDelaySec` for suspend-then-hibernate, a swap file for
  hibernation (fstab, `resume` mkinitcpio hook, `resume=`/`resume_offset=`
  in systemd-boot entries), UPower's critical battery action, and
  optional kernel wakeup-source logging.

`dotfiles system` supports ext4-style swap files (not Btrfs), busybox or
systemd mkinitcpio hooks, and systemd-boot. With another boot loader it
applies everything else and prints the kernel parameters to add by hand;
set `hibernate.cmdline_managed_elsewhere` once they're in. Until hibernation
is set up, hibernating lid actions fall back to plain suspend, and the sway
sleep keys fall back the same way (`scripts/power-sleep`).
Test with `systemctl hibernate` once before relying on it.

## Structure

```
templates/      Jinja2 templates for each config file
generated/      Rendered configs (gitignored, symlinked to $HOME)
scripts/        Utility scripts symlinked to ~/.local/bin
local_config.yaml  Machine-specific variables (gitignored)
sync.yaml       Ansible playbook (user configs)
system.yaml     Ansible playbook (root-level power config)
dotfiles        Entry point script
```

## Dependencies

- ansible
- sway, waybar, mako, fuzzel, foot
- neovim
- swaylock, swayidle
- upower (critical battery action), e2fsprogs (filefrag)
- kanshi
- brightnessctl, playerctl, pactl
- grim, slurp
- libnotify (notify-send)
- curl, jq
- pacman-contrib (checkupdates, for the waybar updates count)
