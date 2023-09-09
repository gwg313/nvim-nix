{
  plugins.lsp = {
    enable = true;
    servers = {
      nixd.enable = true;
      pyright.enable = true;
      bashls.enable = true;
    };
  };

  plugins.lsp-format.enable = true;

  plugins.lspkind = {
    enable = true;
    cmp.enable = true;
  };
  plugins.luasnip = { enable = true; };
  plugins.cmp_luasnip.enable = true;

  plugins.nvim-cmp = {
    enable = true;
    snippet.expand = "luasnip";
    mapping = {
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<Tab>" = {
        action = ''
          function(fallback)
          if cmp.visible() then
          cmp.select_next_item()
          else
          fallback()
          end
          end
        '';
        modes = [ "i" "s" ];
      };
    };
    sources = [
      { name = "buffer"; }
      { name = "luasnip"; }
      { name = "nvim_lsp"; }
      { name = "path"; }
      { name = "tmux"; }
    ];
  };

  plugins.cmp-buffer = { enable = true; };

  plugins.cmp-nvim-lsp = { enable = true; };
  plugins.cmp-nvim-lua = { enable = true; };

  plugins.cmp-path = { enable = true; };
}
