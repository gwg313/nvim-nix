{
  plugins.harpoon = {enable = true;};

  keymaps = [
    {
      mode = "n";
      key = "<leader>mm";
      action = ":lua require('harpoon.ui').toggle_quick_menu()<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Mark Menu";
      };
    }

    {
      mode = "n";
      key = "<leader>ma";
      action = ":lua require('harpoon.mark').add_file()<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Mark File";
      };
    }
    {
      mode = "n";
      key = "<leader>mn";
      action = ":lua require('harpoon.ui').nav_next()<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Next Mark";
      };
    }

    {
      mode = "n";
      key = "<leader>mp";
      action = ":lua require('harpoon.ui').nav_prev()<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Prev Mark";
      };
    }
  ];
}
