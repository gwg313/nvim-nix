{
  plugins.harpoon = { enable = true; };

  maps = {
    normal = {
      "<leader>mm" = {
        action = ":lua require('harpoon.ui').toggle_quick_menu()<CR>";
        silent = true;
      };
      "<leader>ma" = {
        action = ":lua require('harpoon.ui').add_file()<CR>";
        silent = true;
      };
      "<leader>mn" = {
        action = ":lua require('harpoon.ui').nav_next()<CR>";
        silent = true;
      };
      "<leader>mp" = {
        action = ":lua require('harpoon.ui').nav_prev()<CR>";
        silent = true;
      };
    };
  };
}
