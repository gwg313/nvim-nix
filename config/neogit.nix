{
  plugins.neogit = {
    enable = true;
    disableCommitConfirmation = true;
  };

   maps = {
      normal = {
        "<leader>gg" = { action = ":Neogit<CR>"; silent = true; };
      };
    };
}
