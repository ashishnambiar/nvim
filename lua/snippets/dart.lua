require('luasnip_config')

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
