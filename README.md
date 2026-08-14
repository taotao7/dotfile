# dotfile

个人使用的桌面、终端、编辑器、开发工具和 AI 工具配置集合。仓库里同时保留了 Linux/X11 与 macOS 配置，也保留了多套主题和编辑器方案；**不建议直接把整个仓库复制到 `$HOME`**，请按需选择模块。

## 快速导航

- [配置理念](#配置理念)
- [快速开始](#快速开始)
- [按使用场景选择](#按使用场景选择)
- [目录总览](#目录总览)
- [文件说明](#文件说明)
- [平台与配置冲突](#平台与配置冲突)
- [依赖与安装建议](#依赖与安装建议)
- [安全注意事项](#安全注意事项)
- [维护方式](#维护方式)

## 配置理念

这个仓库更像是一个可拆分的配置素材库，而不是严格意义上的“一键安装 dotfiles”：

1. **先确认平台**：Linux 图形会话和 macOS 的终端配置不能混用。
2. **先选一个入口**：例如只使用 i3 或 bspwm，只使用一套 Neovim 发行版，只使用一个 tmux 主题。
3. **再复制或建立软链接**：配置文件通常要放到软件约定的位置，仓库目录本身不是最终运行路径。
4. **最后补依赖和环境变量**：字体、图标、外部命令、插件和 API Key 不包含在配置文件里。

## 快速开始

```bash
git clone <仓库地址> ~/dotfile
cd ~/dotfile
```

建议先备份原配置，再使用软链接。下面是常见入口的示例，路径请根据系统和实际安装位置调整：

```bash
# shell / prompt
ln -sfn "$PWD/zsh/zshrc" ~/.zshrc
ln -sfn "$PWD/starship.toml" ~/.config/starship.toml

# tmux（只能选一个主配置）
ln -sfn "$PWD/tmux/.tmux.conf" ~/.tmux.conf

# Neovim：只能选一个发行版或入口
ln -sfn "$PWD/vim/astrovim" ~/.config/nvim
```

### 推荐安装顺序

1. 安装 `zsh`、`git`、目标终端和目标窗口管理器。
2. 安装 Nerd Font（推荐先看 [字体与主题资源](#字体主题与其他资源)）。
3. 配置 shell 和 prompt，再配置 tmux。
4. 按平台选择 i3/bspwm，或只安装终端配置。
5. 最后选择 Vim/Neovim、VS Code、Zed、JetBrains 或 Doom Emacs。
6. 逐项启动程序验证，不要一次性覆盖所有配置。

## 按使用场景选择

| 需求 | 建议入口 | 说明 |
| --- | --- | --- |
| Linux 平铺窗口 | [`i3/config`](i3/config) | i3 主配置，配合 i3blocks、Dunst、picom |
| Linux 极简窗口管理 | [`bspwm/bspwmrc`](bspwm/bspwmrc) | bspwm 启动与布局脚本 |
| 终端 | [`alacritty.yml`](alacritty.yml)、[`wezterm.lua`](wezterm.lua) | 二选一；Ghostty 目前只有主题文件 |
| shell 提示符 | [`starship.toml`](starship.toml) 或 [`zsh/starship.toml`](zsh/starship.toml) | 二选一，避免混淆实际加载的版本 |
| tmux 状态栏 | [`tmux/.tmux.conf`](tmux/.tmux.conf) | 主配置；其他 `.conf` 是主题/方案候选 |
| Neovim | [`vim/astrovim`](vim/astrovim)、[`vim/nvchad_lua/custom`](vim/nvchad_lua/custom) | AstroNvim 与 NvChad 不能同时作为同一个 `~/.config/nvim` |
| Vim | [`vim/init.vim`](vim/init.vim)、[`vim/light-vimrc`](vim/light-vimrc) | 普通 Vim 入口和轻量方案 |
| macOS 编辑器 | [`vscode`](vscode)、[`zed/settings.json`](zed/settings.json)、[`jetbrains`](jetbrains) | 分别对应 VS Code、Zed、JetBrains |
| Emacs | [`doom.d`](doom.d) | Doom Emacs 配置三件套 |
| 字体 | [`fonts`](fonts)、[`jetbrainsMono`](jetbrainsMono) | 包含 Nerd Font、Input、Cartograph、JetBrains Mono 等 |

## 目录总览

```text
.
├── aider/              Aider 模型价格/能力定义
├── bspwm/              bspwm 与 picom
├── burp/               Burp 相关二进制文件
├── crush/              Charm Crush 的模型与 LSP 配置
├── doom.d/             Doom Emacs
├── esp32/              ESP32 示例程序
├── fonts/              字体及字体安装资料
├── ghostty/themes/     Ghostty 主题
├── i3/                 i3、i3blocks、Dunst、picom
├── item_theme/         iTerm2 主题
├── jetbrains/          IntelliJ/JetBrains 与 IdeaVim
├── jetbrainsMono/      JetBrains Mono 字体
├── kls/                键盘布局/键盘配置
├── neofetch/           Neofetch 配置
├── sounds/             ALSA 配置
├── sublime/            Sublime Text 配置
├── substore/           SubStore 规则
├── tmux/               tmux 主配置、主题和插件脚本
├── vim/                Vim、Neovim、AstroNvim、NvChad、LunarVim
├── vscode/             VS Code 设置和快捷键
├── vscode-custom/      VS Code 自定义 CSS/JS
├── warp-generator/     Warp 配置生成工具
├── zed/                Zed 设置
├── zsh/                zsh 启动文件和 prompt 配置
└── 根目录配置          shell、终端、X11、Starship、AI 工具等
```

## 文件说明

### 根目录：系统、终端与通用配置

| 文件 | 作用 | 使用提示 |
| --- | --- | --- |
| [`profile`](profile) | 通用 shell 环境变量、编辑器、GTK/Qt 输入法和键盘设置 | 更适合登录 shell；按系统选择性复制，不要盲目替换系统 profile |
| [`xinit`](xinit) | X11 启动时设置 locale，并启动 ibus | 与 `xprofile` 的 fcitx 设置存在冲突，二选一 |
| [`xprofile`](xprofile) | X11 会话环境、Ctrl/CapsLock 互换、fcitx 设置 | Linux 图形登录时加载；使用 fcitx 时选它 |
| [`Xresource`](Xresource) | X 资源数据库配置 | 通过 `xrdb -merge ~/.Xresource` 加载 |
| [`02-touchpad-ttc.conf`](02-touchpad-ttc.conf) | Xorg 触摸板配置 | 通常复制到 `/etc/X11/xorg.conf.d/`，修改系统文件前先确认硬件 |
| [`alacritty.yml`](alacritty.yml) | Alacritty 字体、颜色、窗口和 zsh/tmux 启动命令 | 当前会直接尝试进入 tmux；需先安装 tmux |
| [`wezterm.lua`](wezterm.lua) | WezTerm 字体、GPU、透明/模糊、窗口和光标行为 | 主要偏 macOS；字体名称必须在系统中存在 |
| [`starship.toml`](starship.toml) | Starship prompt | 与 `zsh/starship.toml` 是两份候选配置 |
| [`charles.go`](charles.go) | Go 编写的 Charles 相关辅助程序/实验代码 | 不是 shell 配置，使用前先阅读源码和依赖 |
| [`kls/keyboard`](kls/keyboard) | 键盘相关配置/记录 | 使用前确认目标工具的格式和平台 |

### zsh 与 prompt

| 文件 | 作用 |
| --- | --- |
| [`zsh/zshrc`](zsh/zshrc) | Oh My Zsh 启动文件；启用 git、z、Node、npm、tmux、nvm、自动建议、语法高亮等插件，并定义 vim、代理、Aider 等别名 |
| [`zsh/spaceshiprc.zsh`](zsh/spaceshiprc.zsh) | Spaceship prompt 的配置片段；只有使用 Spaceship 主题时才需要 |
| [`zsh/starship.toml`](zsh/starship.toml) | 另一套 Starship prompt 配置；选择它时在 `.zshrc` 中初始化 Starship |

`zsh/zshrc` 会自动 attach 或创建名为 `TMUX` 的 tmux 会话。如果不希望每次打开终端进入 tmux，需要删除或注释该段逻辑。文件中还包含机器相关路径和 API 环境变量，迁移前必须改成自己的值。

### tmux：主配置与主题候选

| 文件 | 作用/风格 |
| --- | --- |
| [`tmux/.tmux.conf`](tmux/.tmux.conf) | 当前主入口；TPM、Catppuccin mocha、battery/cpu/weather 状态模块 |
| [`tmux/default.tmux`](tmux/default.tmux) | 较简洁的基础方案，含 dark-notify 与 tmux-powerline |
| [`tmux/awesome_tmux.conf`](tmux/awesome_tmux.conf) | Catppuccin latte 风格的完整状态栏 |
| [`tmux/catppuccin.tmux.conf`](tmux/catppuccin.tmux.conf) | Catppuccin 基础方案 |
| [`tmux/mocha.tmux.conf`](tmux/mocha.tmux.conf) | Catppuccin mocha 变体 |
| [`tmux/dracula.tmux.conf`](tmux/dracula.tmux.conf) | Dracula 主题，带 battery/cpu/git/ram/weather/time |
| [`tmux/gruvbox.tmux.conf`](tmux/gruvbox.tmux.conf) | Gruvbox 主题，带 CPU/RAM/网络等状态 |
| [`tmux/kanagawa.tmux.conf`](tmux/kanagawa.tmux.conf) | Kanagawa lotus 主题 |
| [`tmux/custom.tmux.conf`](tmux/custom.tmux.conf) | 自定义 Horizon 色板状态栏 |
| [`tmux/2kb.tmux.conf`](tmux/2kb.tmux.conf) | tmux2k Monokai 方案 |
| [`tmux/monokai.conf`](tmux/monokai.conf) | Monokai 主题配置 |
| [`tmux/onedarkpro.tmux.conf`](tmux/onedarkpro.tmux.conf) | One Dark Pro 主题配置 |
| [`tmux/solarized.tmux.conf`](tmux/solarized.tmux.conf) | Solarized 主题配置 |
| [`tmux/gruvbox-tmux`](tmux/gruvbox-tmux) | Gruvbox 插件源码、安装说明和状态脚本；详见其 [`README.md`](tmux/gruvbox-tmux/README.md) |

这些文件都可能设置 TPM 和状态栏插件，**不要同时 include 多个主题文件**。安装 TPM 后可在 tmux 中按 `prefix + I` 安装插件；复制候选文件为 `~/.tmux.conf` 或在主配置中引用即可。

### Linux：i3、bspwm 与 X11 桌面

| 文件/目录 | 作用 |
| --- | --- |
| [`i3/config`](i3/config) | i3 主配置：窗口快捷键、工作区、启动程序、截图、音量、终端和布局 |
| [`i3/picom.conf`](i3/picom.conf) | i3 下的 Picom 合成器配置 |
| [`i3/dunst/dunstrc`](i3/dunst/dunstrc) | Dunst 通知配置 |
| [`i3/i3blocks/config`](i3/i3blocks/config) | i3blocks 状态栏入口 |
| [`i3/i3blocks-modules/conf`](i3/i3blocks-modules/conf) | i3blocks 模块的公共/实验配置 |
| [`i3/i3blocks/battery-plus`](i3/i3blocks/battery-plus) | 电池状态模块 |
| [`i3/i3blocks/memory`](i3/i3blocks/memory) | 内存状态模块 |
| [`i3/i3blocks/cpu_usage`](i3/i3blocks/cpu_usage) | CPU 使用率模块；依赖 `mpstat`，详见其 [`README.md`](i3/i3blocks/cpu_usage/README.md) |
| [`i3/i3blocks/mediaplayer`](i3/i3blocks/mediaplayer) | MPRIS/mpd/cmus 媒体控制模块；MPRIS 需要 `playerctl`，详见其 [`README.md`](i3/i3blocks/mediaplayer/README.md) |
| [`i3/neofetch/config.conf`](i3/neofetch/config.conf) | i3 环境下的 Neofetch 展示配置 |
| [`bspwm/bspwmrc`](bspwm/bspwmrc) | bspwm 启动、输入法、PATH、壁纸/服务和窗口规则 |
| [`bspwm/picom.conf`](bspwm/picom.conf) | bspwm 下的 Picom 配置 |
| [`neofetch/config.conf`](neofetch/config.conf) | 通用 Neofetch 配置，与 i3 内的副本分开维护 |

`i3/config` 和 `bspwm/bspwmrc` 都会启动桌面服务，不能同时作为同一次 X 会话的窗口管理入口。配置中出现的 `terminal`、`morc_menu`、`i3-scrot`、`pcmanfm_pkexec` 等命令需要自行安装或替换。

### 编辑器与 IDE

#### Vim/Neovim

| 文件/目录 | 作用 |
| --- | --- |
| [`vim/init.vim`](vim/init.vim) | 普通 Vim/Neovim 的 Vimscript 入口 |
| [`vim/light-vimrc`](vim/light-vimrc) | 轻量 Vim 配置 |
| [`vim/lua/init.vim`](vim/lua/init.vim) | Lua 相关 Neovim 入口候选 |
| [`vim/lua/coc-settings.json`](vim/lua/coc-settings.json)、[`vim/coc-settings.json`](vim/coc-settings.json) | coc.nvim 设置 |
| [`vim/lua/lua/plugin.lua`](vim/lua/lua/plugin.lua) | Lua 插件配置 |
| [`vim/lunarvim/config.lua`](vim/lunarvim/config.lua) | LunarVim 用户配置 |
| [`vim/astrovim`](vim/astrovim) | AstroNvim 配置、插件、锁定版本和格式/LSP 设置；详见其 [`README.md`](vim/astrovim/README.md) |
| [`vim/nvchad_lua/custom`](vim/nvchad_lua/custom) | NvChad custom 层：主题、映射、插件、LSP、DAP、null-ls；详见其 [`README.md`](vim/nvchad_lua/custom/README.md) |
| [`vim/_vimrc_windows`](vim/_vimrc_windows) | Windows Vim 配置 |
| [`vim/.ycm_extra_conf.py`](vim/.ycm_extra_conf.py) | YouCompleteMe 编译/补全参数 |
| [`vim/vim编译.txt`](vim/vim编译.txt) | Vim 编译相关记录 |

AstroNvim、NvChad、LunarVim 和普通 `init.vim` 是不同的配置体系，先选一种，再把对应目录放到 `~/.config/nvim` 或 `~/.vim`。

#### 其他编辑器

| 文件/目录 | 作用 |
| --- | --- |
| [`vscode/vscode.json`](vscode/vscode.json) | VS Code 主设置 |
| [`vscode/vscode-win.json`](vscode/vscode-win.json) | Windows VS Code 设置候选 |
| [`vscode/keybindings.json`](vscode/keybindings.json) | VS Code 快捷键 |
| [`vscode-custom/custom.css`](vscode-custom/custom.css)、[`custom.js`](vscode-custom/custom.js) | VS Code UI 自定义样式和脚本；依赖相应注入扩展/启动方式 |
| [`zed/settings.json`](zed/settings.json) | Zed 主题、Vim 模式、字体、诊断、格式化和 AI 模型设置 |
| [`jetbrains/ideavimrc`](jetbrains/ideavimrc) | JetBrains IDE 的 IdeaVim 设置 |
| [`jetbrains/optimizedIDE`](jetbrains/optimizedIDE) | JetBrains IDE 优化配置/记录 |
| [`jetbrains/settings.zip`](jetbrains/settings.zip) | JetBrains 设置压缩包，导入前确认 IDE 版本 |
| [`sublime/sublime.settings`](sublime/sublime.settings) | Sublime Text 设置 |
| [`doom.d/init.el`](doom.d/init.el)、[`config.el`](doom.d/config.el)、[`packages.el`](doom.d/packages.el) | Doom Emacs 初始化、用户配置和插件声明 |

### AI 与开发工具

| 文件 | 作用 |
| --- | --- |
| [`codex.toml`](codex.toml) | Codex 的 provider、模型 profile 和推理参数；通过环境变量读取密钥 |
| [`continue.json`](continue.json) | Continue 的 DeepSeek 对话/补全模型、上下文 provider 和 slash commands |
| [`crush/crush.json`](crush/crush.json) | Charm Crush 的 DeepSeek、Moonshot、智谱模型及 Go/TypeScript/Vue LSP 配置 |
| [`aider/qwen-coder.json`](aider/qwen-coder.json) | Aider/LiteLLM 的 Qwen 模型 token 与计费元数据 |
| [`zsh/zshrc`](zsh/zshrc) | 还包含 Aider 的语言、编辑器、模型别名和代理别名 |
| [`warp-generator/main.py`](warp-generator/main.py) | Warp 配置生成脚本；[`Pipfile`](warp-generator/Pipfile) 描述 Python 依赖 |

AI 配置只提供客户端侧模型声明，不保证 provider、模型 ID 和 API 价格永久有效；迁移时应以各工具当前版本文档为准。

### 字体、主题与其他资源

| 文件/目录 | 作用 |
| --- | --- |
| [`fonts/CascadiaCode.Nerd.Font.Complete.ttf`](fonts/CascadiaCode.Nerd.Font.Complete.ttf)、[`CascadiaCode.zip`](fonts/CascadiaCode.zip) | Cascadia Code Nerd Font |
| [`fonts/jetbrainsMono`](jetbrainsMono) | JetBrains Mono 各字重字体 |
| [`fonts/cartograph-cf-v2`](fonts/cartograph-cf-v2) | Cartograph CF 各字重/斜体字体 |
| [`fonts/Input-Font`](fonts/Input-Font) | Input 字体、安装说明、许可证和自定义脚本 |
| [`fonts/movie.ttf`](fonts/movie.ttf) | Movie 字体 |
| [`fonts/x11-misc-fixed.tar.gz`](fonts/x11-misc-fixed.tar.gz) | X11 misc fixed 字体归档 |
| [`ghostty/themes`](ghostty/themes) | Ghostty 的 Everforest、Seoul256 主题 |
| [`item_theme`](item_theme) | iTerm2 的 Dracula、ForestBlue、Gruvbox 主题 |
| [`sounds/asoundrc`](sounds/asoundrc) | ALSA 用户级声音配置 |
| [`substore/rules.yml`](substore/rules.yml) | SubStore 规则集合 |
| [`esp32/dingding.ino`](esp32/dingding.ino) | ESP32 Arduino 示例程序，与桌面配置无关 |
| [`burp/loader.jar`](burp/loader.jar) | Burp 相关 Java 二进制文件；使用前确认来源与许可 |

## 平台与配置冲突

| 冲突项 | 处理方式 |
| --- | --- |
| `xinit` 的 ibus 与 `xprofile` 的 fcitx | 按输入法二选一，不能同时加载 |
| i3 与 bspwm | 按窗口管理器二选一 |
| `starship.toml` 与 `zsh/starship.toml` | 选择一份作为 `~/.config/starship.toml` |
| `zsh` 的 Spaceship 与 Starship | `.zshrc` 中只初始化一种 prompt |
| tmux 下的多个主题配置 | 只保留一个主配置/主题，避免重复设置插件和状态栏 |
| AstroNvim/NvChad/LunarVim/普通 Neovim | 只选择一个 `~/.config/nvim` 入口 |
| Linux 与 macOS 路径 | 配置中有 `/opt/homebrew`、`/Applications`、`/usr/bin` 等平台路径，需要迁移时修改 |

## 依赖与安装建议

按模块安装，不需要一次安装全部依赖：

- 基础：`git`、`zsh`、`tmux`、目标终端、Nerd Font。
- zsh：Oh My Zsh、`zsh-autosuggestions`、`zsh-syntax-highlighting`、`nvm`、`pyenv`。
- tmux：TPM，以及所选主题声明的插件；天气、电池、CPU 模块可能还需要额外命令。
- i3：i3、i3blocks、picom、dunst、`mpstat`、`playerctl`；媒体播放器按需安装。
- Neovim：对应发行版、Git、语言运行时和 LSP/格式化工具。
- 输入法：ibus 或 fcitx 任选其一，并同步选择对应 X11 启动配置。
- AI 工具：在 shell 环境中设置对应 provider 的 API Key，避免写入配置文件。

## 安全注意事项

1. 配置文件可能包含机器路径、代理地址、模型服务地址和 API 环境变量名。迁移前请检查并替换。
2. **不要把真实 API Key 写进仓库**。使用 `export DEEPSEEK_API_KEY=...`、密码管理器或 `.env`（已被 `.gitignore` 忽略），提交前用 `git diff` 检查。
3. `burp/loader.jar` 等二进制文件应确认来源、许可证和安全性；不要在不信任的环境中直接运行。
4. Xorg、输入法、音频和窗口管理器配置可能影响整个图形会话。首次启用前保留恢复 TTY 或备用桌面入口。

## 维护方式

- 新增配置时，把“用途、目标路径、依赖、平台”一并补到本 README。
- 同类配置优先标注为“主入口”或“候选”，避免使用者无法判断该文件是否应该同时加载。
- 大型配置目录保留自己的 README，根 README 只描述入口和选择关系。
- 修改后至少做对应工具的语法检查或启动验证，例如 `zsh -n zsh/zshrc`、`tmux -f tmux/.tmux.conf -L dotfile-check -N`；涉及桌面的配置应在可恢复环境中测试。
- 定期清理失效的模型 ID、绝对路径和已经不用的插件声明。
