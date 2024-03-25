# toggle-terminal

A plugin to make a toggleable terminal in Neovim.

## Usage

`Alt + ;` opens a terminal window while in normal and insert mode.

By default, it is a 10 lines height, horizontal split window, at the bottom of the screen.

Once the terminal is open, pressing again `Alt + ;` will close the terminal. It will close if we are in the terminal buffer, in terminal mode or in normal mode, and also if we are in any other window open.

The terminal buffer is by default unlisted so you are not going to find it with the `:ls` or `:bnext`.

To reopen it `Alt + ;`.

## Manual Installation

Are we installing a plugin or a package? Are we using Neovim or Lua to handle it?

### As a Plugin using Neovim

`toggle-terminal` has all its functionality in a single file. So it could be installed as a plugin as for the definition of the User Manual.

>	A plugin is nothing more than a Vim script file that is loaded automatically when Vim starts.  You can add a plugin very easily by dropping it in your plugin directory.
>	>	:help plugin

The file can be also written in Lua in Neovim.

Where is the plugin directory?

>	The "base" (root) directories conform to the XDG Base Directory Specification.
>	/.../
>	CONFIG DIRECTORY (DEFAULT)
>	                  $XDG_CONFIG_HOME            Nvim: stdpath("config")
>	    Unix:         ~/.config                   ~/.config/nvim
>	    Windows:      ~/AppData/Local             ~/AppData/Local/nvim
>
>	DATA DIRECTORY (DEFAULT) ~
>	                  $XDG_DATA_HOME              Nvim: stdpath("data")
>	    Unix:         ~/.local/share              ~/.local/share/nvim
>	    Windows:      ~/AppData/Local             ~/AppData/Local/nvim-data
>	>	:help base-directories

A plugin installed by the user falls in the category of DATA. The recommended directory in the Manual is:

	Unix		~/.local/share/nvim/site/plugin

Neovim adds an extra level the `site` folder.

Files inside **plugin** directories are executed, sourced, automatically at startup. Including any Lua or Vim files inside subdirectories.

So installing `toggle-terminal` is copying `toggle-terminal.lua` into the `~/.local/share/nvim/site/plugin` directory.

	~/.local/share/nvim/site/plugin/toggle-terminal.lua

As a user, you can put the plugin file anywhere you want as long as is in a **plugin** directory inside the directories in `runtimepath`. `:help load-plugins`. For example:

	~/.config/nvim/plugin/toggle-terminal.lua

### As a Package using Neovim

>	Packages are loaded.  These are plugins, as above, but found in the "start" directory of each entry in 'packpath'.  Every plugin directory found is added in 'runtimepath' and then the plugins are sourced.  See |packages|.
>	>	:help load-plugins

TODO...
