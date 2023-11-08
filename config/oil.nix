{pkgs, ...}: {
  plugins.oil = {enable = true;};

  plugins.oil.columns.icon = {enable = true;};
  extraPlugins = with pkgs.vimPlugins; [nvim-web-devicons];

  plugins.oil.keymaps = {
      "g?" = "actions.show_help";
      "<CR>" = "actions.select";
      "<C-s>" = "actions.select_vsplit";
      "<C-h>" = "actions.select_split";
      "<C-t>" = "actions.select_tab";
      "<C-p>" = "actions.preview";
      "<C-c>" = "actions.close";
      "<C-l>" = "actions.refresh";
      "-" = "actions.parent";
      "_" = "actions.open_cwd";
      "`" = "actions.cd";
      "~" = "actions.tcd";
      "gs" = "actions.change_sort";
      "g." = "actions.toggle_hidden";
    };
    
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
