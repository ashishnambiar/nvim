local ls = require"luasnip"
local s = ls.snippet
-- local sn = ls.snippet_node
-- local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
-- local f = ls.function_node
local c = ls.choice_node
-- local d = ls.dynamic_node
-- local r = ls.restore_node
-- local events = require("luasnip.util.events")
-- local ai = require("luasnip.nodes.absolute_indexer")
local fmt = require("luasnip.extras.fmt").fmt
-- local m = require("luasnip.extras").m
local rep = require("luasnip.extras").rep
-- local lambda = require("luasnip.extras").l
-- local postfix = require("luasnip.extras.postfix").postfix
-- local types = require "luasnip.util.types"

ls.add_snippets("dart", {
	s("statefulW",
		-- i(1, "cond"), t("\n ? "), i(2, "then"), t(" : "), i(3, "else")
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

ls.add_snippets("dart", {
	s("singleton",
		fmt(
[[
class {} {{
  factory {}() => _instance;
  static final {} _instance = {}._();
	{}._();
}}
]],
	{i(1,"name"), rep(1), rep(1), rep(1), rep(1)})
	)
})

ls.add_snippets("dart", {
	s("streamctrl",
		fmt(
[[
  final StreamController<{}> _{}Controller = StreamController{};
  Stream<{}> get {}Stream => _{}Controller.stream;
  StreamSink<{}> get _{}Sink => _{}Controller.sink;

	{}
]],
	{i(2, ""), i(1, "name"), c(3, {t "()", t ".broadcast()"}), rep(2), rep(1), rep(1), rep(2), rep(1), rep(1), i(0), })
	)
})

ls.add_snippets("lua", {
	s("test",
		fmt(
[[
Data and stuff {}
	repeating here {}
]],
	{i(1,"name"), rep(1)})
	)
})

