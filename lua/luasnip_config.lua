local ls = require"luasnip"
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local fmt = require("luasnip.extras.fmt").fmt
local m = require("luasnip.extras").m
local rep = require("luasnip.extras").rep
local lambda = require("luasnip.extras").l
local postfix = require("luasnip.extras.postfix").postfix
local types = require "luasnip.util.types"

ls.config.set_config {
  -- This tells LuaSnip to remember to keep around the last snippet.
  -- You can jump back into it even if you move outside of the selection
  history = true,

  -- This one is cool cause if you have dynamic snippets, it updates as you type!
  updateevents = "TextChanged,TextChangedI",

  -- Autosnippets:
  enable_autosnippets = true,

  -- ext_opts = nil,
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { " <- Current Choice", "NonTest" } },
      },
    },
  },
}

-- i(1, "cond"), t("\n ? "), i(2, "then"), t(" : "), i(3, "else")
ls.add_snippets("dart", {
			s("statefulW",
				fmt(
[[
class {} extends StatefulWidget {{
  {}({{Key? key}}) : super(key: key);

  @override
  State<{}> createState() => _{}State();
}}

class _{}State extends State<{}> {{
  @override
  Widget build(BuildContext context) {{
    return Container();
  }}
}}
]],
				{i(1,"default"), rep(1), rep(1), rep(1), rep(1), rep(1)})
			)
})

ls.add_snippets("dart", {
			s("statelessW",
				fmt(
[[
class {} extends StatelessWidget {{
  const {}({{Key? key}}) : super(key: key);

  @override
  Widget build(BuildContext context) {{
    return Container();
  }}
}}
]],
		{i(1,"name"), rep(1)})
	)
})

-- <c-f> is my expansion key
-- this will expand the current item or jump to the next item within the snippet.
vim.keymap.set({ "i", "s" }, "<c-f>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

-- <c-j> is my jump backwards key.
-- this always moves to the previous item within the snippet
vim.keymap.set({ "i", "s" }, "<c-d>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })

-- <c-l> is selecting within a list of options.
-- This is useful for choice nodes (introduced in the forthcoming episode 2)
vim.keymap.set("i", "<c-g>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end)

vim.keymap.set("i", "<c-u>", require "luasnip.extras.select_choice")

