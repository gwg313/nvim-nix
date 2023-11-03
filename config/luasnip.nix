{ pkgs, ... }: {
  plugins.luasnip = {
    enable = true;
  };
  extraPlugins = with pkgs.vimPlugins; [ friendly-snippets ];
}
