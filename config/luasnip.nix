{pkgs, ...}: {
  plugins.luasnip = {
    enable = true;
    fromVscode = [
      {}
      {paths = ./snippets;}
    ];
  };
  extraPlugins = with pkgs.vimPlugins; [friendly-snippets];
}
