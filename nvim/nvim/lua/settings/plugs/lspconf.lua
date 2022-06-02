-- Install LSPs if necessary
local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

local lspconfig = require('lspconfig')
local servers = {
  "sumneko_lua",
  "clangd",
  "texlab",
  "rust_analyzer",
  "tsserver",
  "eslint"
}

lsp_installer.setup({
  ensure_installed = servers
})


-- Setup Capabilities with Completion Plugin
local cmp_nvim_lsp
status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_ok then
	return
end

local capabilities = cmp_nvim_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())



local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

for _, server in pairs(servers) do
  local opts = {
		capabilities = capabilities
	}
	local has_custom_opts, server_custom_opts = pcall(require, "settings.lsp." .. server)
	if has_custom_opts then
		opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
	end
	lspconfig[server].setup(opts)
end
