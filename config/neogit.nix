{
  plugins.neogit = {
    enable = true;
    disableCommitConfirmation = true;
  };

  maps = {
    normal = {
      "<leader>g" = {
        desc = "  Git";
      };
      "<leader>gg" = {
        desc = "Neogit";
        action = ":Neogit<CR>";
        silent = true;
      };
    };
  };
}
