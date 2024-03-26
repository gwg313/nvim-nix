{
  plugins.neogit = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>gg";
      action = ":Neogit<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Neogit";
      };
    }
  ];
}
