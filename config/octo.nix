{pkgs, ...}: {
  config = {
    extraPlugins = with pkgs.vimPlugins; [octo-nvim];
    extraConfigLua = ''
      require("octo").setup()
    '';
  };
}
