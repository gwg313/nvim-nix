{
  plugins.gitsigns = {
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

    {
      mode = "n";
      key = "<leader>gr";
      action = "<cmd>Gitsigns reset_hunk<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Reset Hunk";
      };
    }

    {
      mode = "v";
      key = "<leader>gs";
      action = "<cmd>lua function() Gitsigns stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Stage Hunk";
      };
    }

    {
      mode = "v";
      key = "<leader>gr";
      action = "function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end";
      #    lua = true;
      options = {
        silent = true;
        desc = "Reset Hunk";
      };
    }

    {
      mode = "n";
      key = "<leader>gS";
      action = "<cmd>Gitsigns stage_buffer<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Stage Buffer";
      };
    }

    {
      mode = "n";
      key = "<leader>gu";
      action = "<cmd>Gitsigns undo_stage_hunk<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Undo Stage Hunk";
      };
    }

    {
      mode = "n";
      key = "<leader>gR";
      action = "<cmd> Gitsigns reset_buffer<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Reset Buffer";
      };
    }

    {
      mode = "n";
      key = "<leader>gp";
      action = "<cmd> Gitsigns preview_hunk<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Preview Hunk";
      };
    }

    {
      mode = "n";
      key = "<leader>gb";
      action = "<cmd> Gitsigns toggle_current_line_blame<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Blame";
      };
    }

    {
      mode = "n";
      key = "<leader>gd";
      action = "<cmd> Gitsigns diffthis<CR>";
      #    lua = true;
      options = {
        silent = true;
        desc = "Diff";
      };
    }
  ];
}
