{ plugins.gitsigns = { 
  enable = true;
  signs = {
    add.text = "▎";
    change.text = "▎";
    delete.text = "󰐊";
    topdelete.text = "󰐊";
    changedelete.text = "󰐊";
  };
}; 

keymaps = [
  {
    mode = "n";
    key = "<leader>gs";
    action = "<cmd>Gitsigns stage_hunk<CR>";
#    lua = true;
    options = {
      silent = true;
      desc = "Stage Hunk";
    };
  }
];
}
