### [tmux](https://github.com/tmux/tmux/wiki)

#### Install using [tpm](https://github.com/tmux-plugins/tpm)

If you are a tpm user, you can install the theme and keep up to date by adding the following to your .tmux.conf file:

	set -g @plugin 'janders223/gruvbox-tmux'  

Add any configuration options below this line in your tmux config.

#### Activating theme

1. Make sure  `run -b '~/.tmux/plugins/tpm/tpm'` is at the bottom of your .tmux.conf
2. Run tmux
3. Use the tpm install command: `prefix + I` (default prefix is ctrl+b)

#### Configuration

Customize the status bar by adding any of these lines to your .tmux.conf as desired:  
* Disable battery functionality: `set -g @gruvbox-show-battery false`
* Disable network functionality: `set -g @gruvbox-show-network false`
* Disable weather functionality: `set -g @gruvbox-show-weather false`
* Disable time functionality: `set -g @gruvbox-show-time false`
* Disable location information: `set -g @gruvbox-show-location false`
* Switch from default fahrenheit to celsius: `set -g @gruvbox-show-fahrenheit false`
* Enable powerline symbols: `set -g @gruvbox-show-powerline true`
* Switch powerline symbols `set -g @gruvbox-show-left-sep ` for left and `set -g @gruvbox-show-right-sep ` for right symbol (can set any symbol you like as seperator)
* Enable window flags: `set -g @gruvbox-show-flags true`
* Adjust the refresh rate for the bar `set -g @gruvbox-refresh-rate 5` the default is 5, it can accept any number
* Enable military time: `set -g @gruvbox-military-time true`
* Disable timezone: `set -g @gruvbox-show-timezone false`
* Switch the left smiley icon `set -g @gruvbox-show-left-icon session` it can accept `session`, `smiley`, `window`, or any character.
* Add padding to the left smiley icon `set -g @gruvbox-left-icon-padding` default is 1, it can accept any number and 0 disables padding.
* Enable high contrast pane border: `set -g @gruvbox-border-contrast true`
* Enable cpu usage: `set -g @gruvbox-cpu-usage true`
* Enable ram usage: `set -g @gruvbox-ram-usage true`
* Enable gpu usage: `set -g @gruvbox-gpu-usage true`
* Swap date to day/month `set -g @gruvbox-day-month true`
