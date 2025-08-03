vim.opt.compatible = false
vim.opt.number= true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop=4            -- see multiple spaces as tabstops so <BS> does the right thing
vim.opt.expandtab = false
vim.opt.showmatch = false        -- I dont like it jumping back..
vim.opt.hlsearch = true          -- highlight search
vim.opt.incsearch = true         -- incremental search
vim.opt.autoindent = true        -- indent a new line the same amount as the line just typed
-- vim.opt.wildmode = longest,list -- get bash-like tab completions
vim.opt.wildignore:append('*.o,*.so,*.d,*.pcm,*.obj,*.dylib,*.bin,*.dll,*.exe')
vim.opt.wildignore:append('*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**')
vim.opt.wildignore:append('*.jpg,*.png,*.jpeg,*.bmp,*.gif,*.tiff,*.svg,*.ico')
vim.opt.wildignore:append('*.pyc,*.pkl')
vim.opt.wildignore:append('*.DS_Store')
vim.opt.wildignore:append('*.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz,*.xdv')
vim.opt.wildignorecase = true  -- ignore file and dir name cases in cmd-completion

vim.opt.cursorline = true        -- highlight current cursorline
vim.opt.ttyfast = true           -- Speed up scrolling in Vim
vim.opt.swapfile = false
vim.opt.showmode = false
-- vim.opt.clipboard = "unnamedplus"  -- using system clipboard
-- vim.opt.cc = '80'            -- set an 80 column border for good coding style

vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

vim.opt.matchpairs:append('<:>') -- add angle brackets to matchpairs


-- vim.opt.formatoptions='qrn1j' -- don't continue comments when hit `o`
vim.cmd("autocmd FileType * set formatoptions=qrn1j")

-- Set .C file as cpp (my usual root script extension)
vim.cmd("autocmd BufRead,BufNewFile *.C set filetype=cpp")


vim.opt.autochdir = true -- change directory to the file being edited

require('config.undotree')

require('config.keymaps')
require('config.lazy')
require('config.lualine')
require('config.themes')
require('config.vimfugitive')
require('config.easyalign')
require('config.easymotion')
require('config.snips')
require('config.telescope')
require('config.nvim-tree')
require('config.alpha-nvim')
require('config.nvim-cmp')
require('config.troubles')

vim.cmd[[
" Remap for destroying trailing whitespace cleanly
:nnoremap <F5> :let _save_pos=getpos(".") <Bar>
    \ :let _s=@/ <Bar>
    \ :%s/\s\+$//e <Bar>
    \ :let @/=_s <Bar>
    \ :nohl <Bar>
    \ :unlet _s<Bar>
    \ :call setpos('.', _save_pos)<Bar>
    \ :unlet _save_pos<CR><CR>
]]
