local colorscheme = "gruvbox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

vim.cmd([[
" highlight Normal ctermbg=234
highlight CursorLine ctermbg=236
highlight Comment cterm=italic  ctermfg=242

highlight LspReferenceRead ctermbg=59
highlight LspReferenceWrite ctermbg=59

highlight DiagnosticError ctermbg=Red ctermfg=Black

let g:jellybeans_use_term_italics = 1
]])

vim.g.airline_left_sep = ''
vim.g.airline_left_alt_sep = ''
vim.g.airline_right_sep = ''
vim.g.airline_right_alt_sep = ''

vim.g.airline_theme_patch_func = 'AirlineThemePatch'

vim.cmd([[
function! AirlineThemePatch(palette)
	if g:airline_theme == 'jellybeans'
		for colors in values(a:palette.inactive)
			let colors[3] = 245
		endfor
	endif
endfunction
]])

vim.g.airline_theme = 'jellybeans'

vim.g.gruvbox_italic=1
