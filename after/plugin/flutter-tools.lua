require("flutter-tools").setup {
  decorations = {
    statusline = {
      app_version = false,
      device = true,
    }
  },
  -- debugger = {           -- integrate with nvim dap + install dart code debugger
  --   enabled = false,
  --   run_via_dap = false, -- use dap instead of a plenary job to run flutter apps
  --   -- if empty dap will not stop on any exceptions, otherwise it will stop on those specified
  --   -- see |:help dap.set_exception_breakpoints()| for more info
  --   exception_breakpoints = {},
  --   -- register_configurations = function(paths)
  --   --   require("dap").configurations.dart = {
  --   --     <put here config that you would find in .vscode/launch.json>
  --   --   }
  --   -- end,
  -- },
  root_patterns = { ".git", "pubspec.yaml" }, -- patterns to find the root of your flutter project
  fvm = false,                                -- takes priority over path, uses <workspace>/.fvm/flutter_sdk if enabled
  -- widget_guides = {
  --   enabled = false,
  -- },
  -- closing_tags = {
  --   highlight = "ErrorMsg", -- highlight for the closing tag
  --   prefix = ">",           -- character to use for close tag e.g. > Widget
  --   enabled = true          -- set to false to disable
  -- },
  dev_log = {
    enabled = true,
    notify_errors = true, -- if there is an error whilst running then notify the user
    open_cmd = "tabedit", -- command to use to open the log buffer
  },
  -- dev_tools = {
  --   autostart = false,         -- autostart devtools server if not detected
  --   auto_open_browser = false, -- Automatically opens devtools in the browser
  -- },
  -- outline = {
  --   open_cmd = "30vnew", -- command to use to open the outline buffer
  --   auto_open = false    -- if true this will open the outline automatically when it is first populated
  -- },
  lsp = {
    color = { -- show the derived colours for dart variables
      enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
      background = false, -- highlight the background
      background_color = nil, -- required, when background is transparent (i.e. background_color = { r = 19, g = 17, b = 24},)
      foreground = false, -- highlight the foreground
      virtual_text = true, -- show the highlight using virtual text
      virtual_text_str = "", -- the virtual text character to highlight
    },
    settings = {
      showTodos = true,
      completeFunctionCalls = true,
      -- analysisExcludedFolders = { "<path-to-flutter-sdk-packages>" },
      renameFilesWithClasses = "prompt", -- "always"
      enableSnippets = true,
      updateImportsOnRename = true,      -- Whether to update imports and other directives when files are renamed. Required for `FlutterRename` command.
    }
  }
}
