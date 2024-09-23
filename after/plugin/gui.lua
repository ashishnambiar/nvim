if vim.g.neovide then
    vim.o.guifont = "FantasqueSansM Nerd Font Mono:h16" -- text below applies for VimScript
    vim.g.neovide_cursor_vfx_mode = "wireframe"

    vim.g.neovide_scale_factor = 1.0
    local change_scale_factor = function(delta)
        vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
    end
    local reset_scale_factor = function()
        vim.g.neovide_scale_factor = 1.0
    end
    vim.keymap.set("n", "<C-0>", function()
        reset_scale_factor()
    end)
    vim.keymap.set("n", "<C-=>", function()
        change_scale_factor(1.10)
    end)
    vim.keymap.set("n", "<C-->", function()
        change_scale_factor(1 / 1.10)
    end)
end
