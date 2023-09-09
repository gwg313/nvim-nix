{ pkgs, ... }:

{
  plugins.telescope = {
    enable = true;
    extensions.fzf-native.enable = true;
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
  extraPackages = with pkgs; [
    fzf
  ];
}

