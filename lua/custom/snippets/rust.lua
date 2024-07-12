require("luasnip.session.snippet_collection").clear_snippets("rust")

local ls = require("luasnip")

local s = ls.snippet
local i = ls.insert_node

local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("rust", {
	s("el", fmt('println!("{}: {}", {})', { i(0), i(1), i(2) })),
})
