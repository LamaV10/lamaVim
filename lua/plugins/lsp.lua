return {
    {
	"neovim/nvim-lspconfig",
	config = function ()
	    vim.lsp.enable('ccls') 
	    vim.lsp.enable('jdtls')
	    vim.lsp.enable('pylsp')
	    vim.lsp.enable('rust_analyzer')
	    vim.lsp.config('pylsp', {
	       cmd = { "/home/marcel/.venv/nvim/bin/pylsp" },
	       settings = {
		   pylsp = {
		       plugins = {
			   pycodestyle = {
			       ignore = {'W391', 'E305', 'E302', 'E266', 'E303'},
			       maxLineLength = 100
			   }
		       }
		   }
	       }
	   })
	end,
    }
}
