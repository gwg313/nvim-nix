{
  plugins.floaterm = {enable = true;};

  keymaps = [
    {
      mode = "n";
      key = "<c-t>";
      action = ":FloatermToggle<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Terminal";
      };
    }
  ];
}
