{
  plugins = {
    treesitter = {
      enable = true;
      indent = true;
      nixvimInjections = true;
    };

    treesitter-context = {enable = false;};

    treesitter-refactor = {
      enable = true;
      highlightDefinitions.enable = true;
    };
  };
}
