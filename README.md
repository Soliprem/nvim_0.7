# AstroNvim User Configuration

This is a fork of mehalter's configuration. Follow the installation instructions fro his config 
(the second link, if followed, will bring you to his git website)

## Installation

1. Install AstroNvim

```sh
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

2. Install these user settings

```sh
git clone https://git.mehalter.com/mehalter/AstroNvim_user.git ~/.config/nvim/lua/user
```

3. Initialize AstroVim

```sh
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```
