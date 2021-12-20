local nvim_lsp = require('lspconfig')

local on_attach = function(client)
    require'completion'.on_attach(client)
end

nvim_lsp.rust_analyzer.setup({})

local pid = vim.fn.getpid()
local omnisharp_bin = "/home/oneilljp/Desktop/omnisharp/run"

require('lspconfig').omnisharp.setup{
	cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) };
	root_dir = nvim_lsp.util.root_pattern("*.csproj", "*.sln");
}

