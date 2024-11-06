return {
  {
    "lommix/godot.nvim",
    config = function()
      local ok, godot = pcall(require, "godot")
      if not ok then
        return
      end

      godot.setup({})
    end,
  },
}
