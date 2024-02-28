local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("javascript", {
  s({
    trig = "clg",
    namr = "ConsoleLog",
    dscr = "Log message to console",
  }, {
    t("console.log("),
    i(0),
    t(")"),
  }),
  s({
    trig = "cle",
    namr = "ConsoleError",
    dscr = "Log error message to console",
  }, {
    t("console.error("),
    i(0),
    t(")"),
  }),
})
