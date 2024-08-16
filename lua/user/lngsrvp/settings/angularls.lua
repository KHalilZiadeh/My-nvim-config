local opts = {
  cmd = { "ngserver", "--stdio", "--tsProbeLocations", ".", "--ngProbeLocations", "." },
  on_new_config = function(new_config)
    new_config.cmd = { "ngserver", "--stdio", "--tsProbeLocations", ".", "--ngProbeLocations", "." }
  end,
  filetypes = { "typescript", "html", "typescriptreact", "typescript.tsx" },
  root_dir = require('lspconfig').util.root_pattern("angular.json", ".git"),
  single_file_support = true,
}

return opts

