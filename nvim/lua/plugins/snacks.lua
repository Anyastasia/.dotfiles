return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  
  config = function ()

    require("snacks").setup({

      --dashboard 
      dashboard = { 
        enabled = true,
        preset = {
          header = [[ 
________   ___      ___ ___  _____ ______      
|\   ___  \|\  \    /  /|\  \|\   _ \  _   \    
\ \  \\ \  \ \  \  /  / | \  \ \  \\\__\ \  \   
 \ \  \\ \  \ \  \/  / / \ \  \ \  \\|__| \  \  
  \ \  \\ \  \ \    / /   \ \  \ \  \    \ \  \ 
   \ \__\\ \__\ \__/ /     \ \__\ \__\    \ \__\
    \|__| \|__|\|__|/       \|__|\|__|     \|__|
        ]]
        },
      },
      indent = { enabled = true },
      notify = { enabled = true },
      notifier = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
    
      --explorer
      explorer = { 
        enabled = true,
        replace_netrw = true
      },
      --picker
      picker = {
        --enabled = true,
        matcher = {
          frecency = true,
          cwd_bonus = true,
          history_bonus = true
        },
        sort = {
          -- default sort is by score, text length and index
          fields = { "score:desc", "#text", "idx" },
        },
        debug = {
          scores = true
        }
      },


      --terminal 
      terminal = { enabled = true },
      scope = { enabled = true },
      input = { enabled = true },
   
    })
  end,

  --keys 
  keys = {
    -- Top Pickers & Explorer
    { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
    { "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
    { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
    { "<leader>n", function() Snacks.picker.notifications() end, desc = "Notification History" },
    { "<leader>e", function() Snacks.explorer.reveal() end, desc = "File Explorer" }, --explorer for cwd
    --files
    { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
    { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
    { "<leader>fg", function() Snacks.picker.git_files() end, desc = "Find Git Files" },
    { "<leader>fp", function() Snacks.picker.projects() end, desc = "Projects" },
    { "<leader>fr", function() Snacks.picker.recent() end, desc = "Recent" },

    --search 
    { "<leader>sd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
    { "<leader>sD", function() Snacks.picker.diagnostics_buffer() end, desc = "Diagnostics Buffer" },
   
    --LSP
    { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
    { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
    { "gr", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
    { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
    { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
    { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
    { "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },
    

    --terminal
    {"<leader>t", function () Snacks.terminal.open() end, desc = "Open terminal" },
    {"<leader>tl", function () Snacks.terminal.list() end, desc = "Terminal Lists"},
    {"<leader>tg", function () Snacks.terminal.get() end, desc = "Get terminal" },
    --words 
    { "]]", function() Snacks.words.jump(vim.v.count1) end, desc = "Next reference", mode = {"n", "t"} },
    { "[[", function() Snacks.words.jump(-vim.v.count1) end, desc = "reference", mode = {"n", "t"} },
  }
}
