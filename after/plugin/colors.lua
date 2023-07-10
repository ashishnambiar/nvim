function SetColorScheme(color)
    color = color or "PaperColor"
    vim.cmd.colorscheme(color)

    vim.o.background = "dark"
end

function DisableTermGUI()
    vim.opt.termguicolors = false
    SetColorScheme()
end

SetColorScheme()
-- EnableTermGUI()
