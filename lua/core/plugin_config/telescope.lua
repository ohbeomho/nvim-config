local builtin = require("telescope.builtin")
local wk = require("which-key")

wk.register({
  f = {
    name = "File",
    f = {
      builtin.find_files,
      "Find file",
    },
    g = {
      builtin.live_grep,
      "Live grep",
    },
    b = {
      builtin.buffers,
      "Buffers",
    },
  },
}, { prefix = "<leader>" })
