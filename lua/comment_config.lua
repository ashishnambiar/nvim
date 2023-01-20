require('Comment').setup()

local ft = require('Comment.ft')

-- 1. Using set function

-- Just set only line comment
ft.set('yaml', '#%s')

-- Or set both line and block commentstring
-- You can also chain the set calls
ft.set('javascript', {'//%s', '/*%s*/'}).set('conf', '#%s')

-- 2. Metatable magic

-- One filetype at a time
ft.javascript = {'//%s', '/*%s*/'}
ft.yaml = '#%s'

-- Multiple filetypes
ft({'go', 'rust', 'dart'}, {'//%s', '/*%s*/'})
ft({'toml', 'graphql'}, '#%s')

-- 3. Get the whole set of commentstring
ft.lang('lua') -- { '--%s', '--[[%s]]' }
ft.lang('javascript') -- { '//%s', '/*%s*/' }
