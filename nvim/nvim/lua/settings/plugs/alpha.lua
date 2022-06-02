local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

math.randomseed(os.time())

-- Header
local function choose_logo()
  local logo_opts = {
    {
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⡟⠁⠈⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠋⠁⠈⢻⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⠀⠀⢀⣴⣿⠿⠿⣿⣿⣿⣿⣿⣿⠿⠿⣿⣦⡀⠀⠀⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⠀⣰⠟⠁⠀⠀⠀⠀⠈⠙⠋⠁⠀⠀⠀⠀⠈⠻⣆⠀⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⡾⠃⠀⣀⣤⣶⣶⣤⡀⠀⠀⢀⣤⣶⣶⣤⣀⠀⠘⢷⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⠟⢀⣤⣾⣿⠋⣠⣄⠙⣷⡀⢀⣾⠋⣠⣄⠙⣿⣷⣤⡀⠻⣿⣿⣿⣿]],
      [[⣿⣿⡿⠃⣠⣿⣿⣿⣿⣄⠙⠋⣠⣿⠁⠈⣿⣄⠙⠋⣠⣿⣿⣿⣿⣄⠘⢿⣿⣿]],
      [[⣿⣏⠀⢰⣿⣿⣿⣿⣿⣿⠿⠛⠻⣿⡛⢛⣿⠟⠛⠿⣿⣿⣿⣿⣿⣿⡆⠀⣹⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⠋⠀⠀⢀⡀⠈⣿⣿⠁⢀⡀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣏⡀⠀⠀⠈⠛⠛⠋⠙⠛⠛⠁⠀⠀⢀⣹⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⣀⠀⠀⠀⠀⣀⣠⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]]
    },

    {
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣷⣄⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠀⠀⠀⠀⣰⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⢹⣿⣿⣿⣿⠇⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⣿⣿⣿⡿⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⡟⠛⠛⠛⠓⠀⠀⠀⠀⠀⠛⠛⠛⠃⠀⠀⠀⠀⠀⠛⠛⠛⠛⣿⣿⣿⣿]],
      [[⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿]],
      [[⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⢀⣿⣿⣿⣿⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣆⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⠟⠁⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠘⢿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    },
    {
       [[             ╷ ╷]],
       [[             │ │]],
       [[             ║ ║]],
       [[             ║ ║]],
       [[            ▐███▌]],
       [[            ▐███▌      │   │]],
       [[            ▐███▌      ╽   ╽]],
       [[           ▐█████▌     ┃   ┃]],
       [[           ▐█████▌     █████]],
       [[     ▄██▄  ▐█████▌     █████]],
       [[     ████ ▐███████▌    █████]],
       [[     ████ ▐███████▌   ▐█████▌]],
       [[   ▐██████▐███████▌   ▐█████▌]],
       [[   ▐██████▐████▐█████▌▐█████▌]],
       [[   ▐██████▐████▐█████▌███████]],
       [[█████▌████▐████▐█████▌████▐████]],
       [[█████▌████▐████▐█████▌████▐████]]
     }
  }

  return logo_opts[math.random(#logo_opts)]
end

-- Create Footer
local function footer()
  local total_plugins = #vim.tbl_keys(packer_plugins)
  local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
  local version = vim.version()
  local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

  return { datetime .. "   " .. total_plugins .. " plugins" .. nvim_version_info }
end


-- Menu
dashboard.section.buttons.val = {
  dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
  dashboard.button( "f", "  Find file", ":Telescope find_files<CR>"),
  dashboard.button( "r", "  Recent"   , ":Telescope oldfiles<CR>"),
  dashboard.button( "u", "  Update"   , ":PackerSync<CR>"),
  dashboard.button( "s", "  Settings" , ":cd $HOME/.config/nvim | :e init.lua<CR>"),
  dashboard.button( "q", "  Quit NVIM", ":qa<CR>"),
}




dashboard.section.header.val = choose_logo()
dashboard.section.header.opts.hl = "Keyword"

dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "String"

-- Get some nice spacing up in there
local head_butt_padding = 4
local occu_height = #dashboard.section.header.val + 2 * #dashboard.section.buttons.val + head_butt_padding
local header_padding = math.max(0, math.ceil((vim.fn.winheight('$') - occu_height) * 0.25))
local foot_butt_padding_ub = vim.o.lines - header_padding - occu_height - #dashboard.section.footer.val - 3
local foot_butt_padding = math.floor((vim.fn.winheight('$') - 2 * header_padding - occu_height))
foot_butt_padding = math.max(0, math.max(math.min(0, foot_butt_padding), math.min(math.max(0, foot_butt_padding), foot_butt_padding_ub)))

dashboard.config.layout = {
  { type = 'padding', val = header_padding },
  dashboard.section.header,
  { type = 'padding', val = head_butt_padding },
  dashboard.section.buttons,
  { type = 'padding', val = foot_butt_padding },
  dashboard.section.footer
}


alpha.setup(dashboard.opts)
vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])

