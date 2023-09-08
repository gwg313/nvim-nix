{pkgs, ...}:
{
  plugins.neogit = {
    enable = true;
  };

   maps = {
      normal = {
        "<leader>gg" = { action = ":Neogit<CR>"; silent = true; };
      };
    };
}

