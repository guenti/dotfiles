-- Providers
-- disable perl
vim.g["loaded_perl_provider"] = 0
-- disable ruby
vim.g["loaded_ruby_provider"] = 0
-- disable python v2
vim.g["loaded_python_provider"] = 0
-- using python3 from neovim venv
vim.g["python3_host_prog"] = "$HOME/.pyenv/versions/tools/bin/python"

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
