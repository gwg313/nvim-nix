{
  helpers,
  pkgs,
  ...
}: {
  imports = [./cmp.nix ./none-ls.nix ./copilot-cmp.nix];
  plugins = {
    lsp-format.enable = true;
    lspsaga.enable = true;
    cmp_luasnip.enable = true;
    friendly-snippets.enable = true;
    emmet = {
      enable = true;
      settings.leader_key = "<c-z>";
    };
    lsp = {
      enable = true;
      servers = {
        # For a list of available lsps see https://github.com/neovim/nvim-lspconfig/tree/master/lua/lspconfig/server_configurations
        # You must always check that it has been added to nixvim https://nix-community.github.io/nixvim/plugins/lsp/index.html
        ansiblels.enable = true;
        bashls.enable = true;
        clangd.enable = true;
        dockerls.enable = true;
        gopls.enable = true;
        leanls.enable = true;
        nil_ls.enable = true;
        rust-analyzer = {
          enable = true;
          installCargo = true;
          installRustc = true;
        };
        tsserver.enable = true;
        hls.enable = true;
        tailwindcss.enable = true;
        texlab.enable = true;
        cssls.enable = true;
        volar.enable = true;
        lua-ls = {
          enable = true;
          settings = {
            workspace.library = [
              (helpers.mkRaw "vim.api.nvim_get_runtime_file(\"\", true)")
              "${pkgs.awesome}/share/awesome/lib"
            ];
          };
        };
        ruff-lsp.enable = true;
        pyright.enable = true;
        elixirls.enable = true;
        java-language-server.enable = true;
      };
    };
  };
}
