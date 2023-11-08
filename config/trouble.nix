{
  plugins.trouble = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>tt";
      action = "<cmd>TroubleToggle<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Trouble Toggle";
      };
    }

    {
      mode = "n";
      key = "<leader>tw";
      action = "<cmd>TroubleToggle workspace_diagnostics<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Workspace Diagnostics";
      };
    }

    {
      mode = "n";
      key = "<leader>tq";
      action = "<cmd>TroubleToggle quickfix<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Quickfix";
      };
    }

    {
      mode = "n";
      key = "gR";
      action = "<cmd>TroubleToggle lsp_references<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Lsp References";
      };
    }
  ];
}
