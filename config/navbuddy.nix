{
  plugins.navbuddy = {
    enable = true;
    lsp.autoAttach = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>lb";
      action = ":Navbuddy<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Navbuddy";
      };
    }
  ];
}
