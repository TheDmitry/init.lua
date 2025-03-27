-- Настройки табуляции
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true

-- Нумерация строк
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'  -- Более современная альтернатива foldcolumn

-- Настройки поиска
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Дополнительные настройки
vim.opt.mouse = 'a'
vim.opt.textwidth = 100
vim.opt.wrap = true
vim.opt.linebreak = true     -- Перенос по словам
vim.opt.history = 1000
vim.opt.undofile = true      -- Включение persistent undo
vim.opt.showmode = false     -- Скрываем режимы, так как используем airline

-- Раскладка клавиатуры
vim.opt.keymap = 'russian-jcukenmac'
vim.opt.iminsert = 0
vim.opt.imsearch = 0

-- Настройки шрифта (Neovim GUI)
if vim.fn.has('nvim') == 1 then
    vim.opt.guifont = 'Fira Code:h10'
end
