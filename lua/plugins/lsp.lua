return {
    {
	"neovim/nvim-lspconfig",
	config = function ()
	   vim.lsp.enable('ccls') 
	   vim.lsp.enable('pylsp')
	   vim.lsp.enable('jdtls')
	end,
    }
}
