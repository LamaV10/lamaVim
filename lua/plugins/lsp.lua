return {
    {
	"neovim/nvim-lspconfig",
	config = function ()
	   vim.lsp.enable('ccls') 
	   vim.lsp.enable('jdtls')
	   vim.lsp.enable('pylsp')
	   vim.lsp.config('pylsp', {
	       cmd = { "/home/marcel/.venv/nvim/bin/pylsp" },
	   })

	end,
    }
}
