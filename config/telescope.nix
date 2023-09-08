{
  plugins.telescope = {
    enable = true;
  };
   maps = {
      normal = {
        "<leader>ff" = { action = ":Telescope find_files<CR>"; silent = true; };
      };
      visual = {
        ">" = ">gv";
        "<" = "<gv";
      };
    };
}

