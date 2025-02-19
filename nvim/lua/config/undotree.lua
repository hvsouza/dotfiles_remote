
-- For persistent undo tree
vim.cmd(
  [[
  if has("persistent_undo")
    if has("nvim")
      let target_path = expand('~/.undodirnvim')

      " create the directory and any parent directories
      " if the location does not exist.
        if !isdirectory(target_path)
          call mkdir(target_path, "p", 0700)
        endif

        let &undodir=target_path
        set undofile
      endif
    endif
  set undofile
]])

-- For undo tree
vim.keymap.set("n", "<C-x>u", ":UndotreeToggle<CR>", { desc = "Toggle undo tree" })

