{
  plugins.lsp = {
    enable = true;
    servers = {
      nixd.enable = true;
      pyright.enable = true;
      bashls.enable = true;
    };
  };

  plugins.nvim-cmp = {
    enable = true;
  };

  plugins.cmp-nvim-lsp = {
    enable = true;
  };
  plugins.cmp-nvim-lua = {
    enable = true;
  };

  plugins.cmp-path = {
    enable = true;
  };
}
