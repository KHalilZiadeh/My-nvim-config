local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lngsrvp.mason"
require("user.lngsrvp.handlers").setup()
require "user.lngsrvp.null-ls"
