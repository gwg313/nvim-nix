{
  plugins = {
    treesitter = {
      enable = true;
      indent = true;
      nixvimInjections = true;
    };

    treesitter-context = {enable = true;};

    treesitter-refactor = {
      enable = true;
      highlightDefinitions.enable = true;
    };
  };
}
