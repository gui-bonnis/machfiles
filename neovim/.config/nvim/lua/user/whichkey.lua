local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local setup = {
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = false, -- adds help for motions
      text_objects = false, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  -- operators = { gc = "Comments" },
  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  popup_mappings = {
    scroll_down = "<c-d>", -- binding to scroll down inside the popup
    scroll_up = "<c-u>", -- binding to scroll up inside the popup
  },
  window = {
    border = "rounded", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0,
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
  ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
  triggers = "auto", -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    i = { "j", "k" },
    v = { "j", "k" },
  },
}

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
  e = {
    name = "Editor",
    a = { "", "Neovim Screen"},
    b = {
      name = "Buffer",
      a = { "", "Rename File"},
      b = { "", "Create File"},
      c = { "", "Open File"},
      d = { "", "Save"},
      e = { "", "Save All"},
      f = { "", "Close"},
      g = { "", "Close All"},
    },
    c = {
      name = "Edit",
      a = { "", "Find"},
      b = { "", "Replace"},
      c = { "", "Comment"},
      d = { "", "Format"},
      e = { "", "Cut"},
      f = { "", "Copy"},
      g = { "", "Paste"},
      h = {
        name = "Navigation",
        a = { "", "Go to Definition"},
        b = { "", "Go to Reference"},
        c = { "", "Move back"},
        d = { "", "Move forward"},
      },
    },
    d = {
      name = "Plugins",
      a = { "", "Install"},
      b = { "", "List Installed"},
      c = { "", "Update"},
      d = { "", "Uninstall"},
    },
    e = {
      name = "Windows",
      a = { "", "Split Vertical"},
      b = { "", "Split Horizontal"},
      c = { "", "Close Vertical Split"},
      d = { "", "Close Horizontal Split"},
    },
  },
  l = {
    name = "Language",
    a = {
      name = "Run",
      a = {"", "Executable"},
      b = {"", "Debug"},
      c = {"", "Test"},
      d = {"", "Code Lens"},
    },
    b = { "CheatSheet", "CheatSheet"},
    c = { "Java", "Java"},
    d = { "Shell", "Shell"},
    e = { "OrgMode", "Org Mode"},
  },
  t = {
    name = "Tools",
    a = {
      name = "Git",
      b = { "", ""},
      c = { "", ""},
      d = { "", ""},
      e = { "", ""},
      f = { "", ""},
      g = { "", ""},
      h = { "", ""},
    },
    b = {
      name = "Maven",
      b = { "", ""},
      c = { "", ""},
      d = { "", ""},
      e = { "", ""},
      f = { "", ""},
      g = { "", ""},
      h = { "", ""},
    },
    c = {
      name = "Docker",
      b = { "", ""},
      c = { "", ""},
      d = { "", ""},
      e = { "", ""},
      f = { "", ""},
      g = { "", ""},
      h = { "", ""},
    },
    d = {
      name = "Resource Manager",
      b = { "", ""},
      c = { "", ""},
      d = { "", ""},
      e = { "", ""},
      f = { "", ""},
      g = { "", ""},
      h = { "", ""},
      },
    e = {
      name = "Postman",
      b = { "", ""},
      c = { "", ""},
      d = { "", ""},
      e = { "", ""},
      f = { "", ""},
      g = { "", ""},
      h = { "", ""},
      },
    f = {
      name = "Terminal",
      b = { "", ""},
      c = { "", ""},
      d = { "", ""},
      e = { "", ""},
      f = { "", ""},
      g = { "", ""},
      h = { "", ""},
      },
    g = {
      name = "Hot Reload",
      b = { "", ""},
      c = { "", ""},
      d = { "", ""},
      e = { "", ""},
      f = { "", ""},
      g = { "", ""},
      h = { "", ""},
      },
    h = {
      name = "Gradel",
      b = { "", ""},
      c = { "", ""},
      d = { "", ""},
      e = { "", ""},
      f = { "", ""},
      g = { "", ""},
      h = { "", ""},
      },
    i = {
      name = "Bower",
      b = { "", ""},
      c = { "", ""},
      d = { "", ""},
      e = { "", ""},
      f = { "", ""},
      g = { "", ""},
      h = { "", ""},
      },
    j = {
      name = "Grunt",
      b = { "", ""},
      c = { "", ""},
      d = { "", ""},
      e = { "", ""},
      f = { "", ""},
      g = { "", ""},
      h = { "", ""},
      },
    k = {
      name = "LaTeX",
      b = { "", ""},
      c = { "", ""},
      d = { "", ""},
      e = { "", ""},
      f = { "", ""},
      g = { "", ""},
      h = { "", ""},
      },
  },
  p = {
    name = "Project",
      b = { "", ""},
      c = { "", ""},
      d = { "", ""},
      e = { "", ""},
      f = { "", ""},
      g = { "", ""},
      h = { "", ""},
  },
  c = {
    name = "Coding",
      b = { "", ""},
      c = { "", ""},
      d = { "", ""},
      e = { "", ""},
      f = { "", ""},
      g = { "", ""},
      h = { "", ""},
  },
}

local vopts = {
  mode = "v", -- VISUAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}
local vmappings = {
  ["/"] = { "<ESC><CMD>lua require(\"Comment.api\").toggle_linewise_op(vim.fn.visualmode())<CR>", "Comment" },
}

which_key.setup(setup)
which_key.register(mappings, opts)
which_key.register(vmappings, vopts)
