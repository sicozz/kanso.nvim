local theme = require("kanso.colors").setup().theme

local kanso = {}

kanso.normal = {
    a = { bg = theme.syn.fun, fg = theme.ui.bg },
    b = { bg = theme.ui.none, fg = theme.syn.fun },
    c = { bg = theme.ui.none, fg = theme.ui.fg },
}

kanso.insert = {
    a = { bg = theme.ui.special, fg = theme.ui.bg },
    b = { bg = theme.ui.none, fg = theme.ui.special },
}

kanso.command = {
    a = { bg = theme.syn.operator, fg = theme.ui.bg },
    b = { bg = theme.ui.none, fg = theme.syn.operator },
}

kanso.visual = {
    a = { bg = theme.ui.fg, fg = theme.ui.bg },
    b = { bg = theme.ui.none, fg = theme.ui.special },
}

kanso.replace = {
    a = { bg = theme.syn.constant, fg = theme.ui.bg },
    b = { bg = theme.ui.none, fg = theme.syn.constant },
}

kanso.inactive = {
    a = { bg = theme.ui.none, fg = theme.ui.fg_dim },
    b = { bg = theme.ui.none, fg = theme.ui.fg_dim },
    c = { bg = theme.ui.none, fg = theme.ui.fg_dim },
}

if vim.g.kanso_lualine_bold then
    for _, mode in pairs(kanso) do
        mode.a.gui = "bold"
    end
end

return kanso
