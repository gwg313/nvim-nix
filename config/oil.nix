{pkgs, ...}: {
  plugins.oil = {enable = true;};

  plugins.oil.columns.icon = {enable = true;};
  extraPlugins = with pkgs.vimPlugins; [nvim-web-devicons];

  keymaps = [
    {
      mode = "n";
      key = "<leader>_";
      action = "<cmd>Oil --float<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "󰏇 Oil";
      };
    }
  ];
}
