require('formatter').setup{
	  filetype = {
    dart = {
      function()
        return {
          exe = "dart",
          args = {
            "format ",
            vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))
          },
          stdin = false
        }
      end
    },
    lua = {
        -- luafmt
        function()
          return {
            exe = "luafmt",
            args = {"--indent-count", 1, "--stdin"},
            stdin = true
          }
        end
    }
  }
}
