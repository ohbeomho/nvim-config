local builtin = require("telescope.builtin")
local wk = require("which-key")

wk.register({
  f = {
    name = "File",
    f = {
      builtin.find_files,
      "Find file",
    },
    b = {
      builtin.live_grep,
      "Live grep",
    },
    g = {
      builtin.buffers,
      "Buffers",
    },
  },
}, { prefix = "<leader>" })
