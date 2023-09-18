# NVIM

This is a custom configuration based on
[Lazyvim](https://github.com/LazyVim/LazyVim) starter template. It's been fun to
try to configure [neovim](https://github.com/neovim/neovim) according to my own
preference. However, it's painful and hard to learn and to keep up with new
releases. Therefore, alleviating the pain with LazyVim, seems to be a nice thing
and just enjoy the wonderful experience with neovim！Actually, all the pain I
have felt during the process of learning neovim and its whole plugin ecosystem
were already basically cured by LazyVim already. The only reason I wasn't using
LazyVim earlier (instead only using [lazy](https://github.com/folke/lazy.nvim))
was that I didn't carefully reading and trying the
[document](https://lazyvim.org) .

I was being hasty just wanting a solution, but not willing to calm down, think
and learn. It was actually the new feature of **inlay hint** that motivated me
to try the framework, because the lspconfig used in LazyVim has changed over the
last few months from last time I migrated from
[packer](https://github.com/wbthomason/packer.nvim) to lazy. This fact that I
will need to add/change a lot of configurations every few months horrified me.

This will probably be the last migration, since everything works great now.

Thanks to all the selfless contributors who spent their time and energy to make
great tools!

## Notes from migrating and integrating old configurations

1. Using transparent background and having another white interface behind it
   will reduce the readability. Therefore, changing the "LineNr" needs to be
   done. In the process of doing that, there was a problem:

   - setting "LineNr" via [catppuccin](https://github.com/catppuccin/nvim) and
     lazyvim won't work. Because catppuccin is also set by LazyVim, so whatever
     is set here will be overwritten later. The solution is to directly override
     catppuccin's highlight setting for "LineNr".

2. [Flash](https://github.com/folke/flash.nvim) will override a nice setting
   that comes with [vim-surround](https://github.com/tpope/vim-surround). With
   vim-surround, I can yank pairs("", '', [], etc) to existing text simply by
   select the text and press _S_ followed with the pair. However, Flash uses _S_
   in visual mode, and I need to remove it from visual mode. Trying to do this
   via merging keys won't work. Trying to disable it via

   ```lua
   keys = {
       {"S", false}
   }
   ```

   also didn't work. Returning a whole set of keymaps to override the defaults
   worked.
