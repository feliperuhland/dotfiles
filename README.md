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
```

## Structure

```
templates/      Jinja2 templates for each config file
generated/      Rendered configs (gitignored, symlinked to $HOME)
local_config.yaml  Machine-specific variables (gitignored)
sync.yaml       Ansible playbook
dotfiles        Entry point script
```

## Dependencies

- ansible
- sway, waybar, mako, fuzzel, foot
- swaylock, swayidle
- brightnessctl, playerctl, pactl
- grim, slurp
