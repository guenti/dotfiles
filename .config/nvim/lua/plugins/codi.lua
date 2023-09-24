return {
  "metakirby5/codi.vim",
  init = function()
    vim.g["codi#interpreters"] = {
      python = {
        bin = "python3",
      },
    }
    vim.g["codi#virtual_text_pos"] = "right_align"
  end,
  cmd = "Codi",
}
