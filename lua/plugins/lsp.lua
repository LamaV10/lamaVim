return {
    "neovim/nvim-lspconfig",
    config = function ()
	vim.lsp.config('clangd', {
	  cmd = { 'clangd' },
	  filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'ino' },
	})
	vim.lsp.enable('clangd')
	vim.lsp.enable('jdtls')
	vim.lsp.enable('rust_analyzer')
	vim.lsp.enable('htmx')
	vim.lsp.enable('pylsp')
	vim.lsp.config('pylsp', {
	cmd = { "/home/marcel/.venv/nvim/bin/pylsp" },
	    settings = {
		pylsp = {
		    plugins = {
			pycodestyle = { enabled = false }, -- deactivates E/W style warnings
			pydocstyle  = { enabled = false }, -- deactivates Dxxx docstring warnings
			mccabe      = { enabled = false }, -- deactivates complexity warnings
			pyflakes    = { enabled = true },  -- keeps error checks
		    }
		}
	    }
	})
    end,
}
