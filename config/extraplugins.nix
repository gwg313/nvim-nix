{ pkgs, ... }: {

  extraPlugins = with pkgs.vimPlugins; [ zenbones-nvim lush-nvim ];
}
