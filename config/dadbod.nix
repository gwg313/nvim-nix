{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    vim-dadbod
    vim-dadbod-ui
    vim-dadbod-completion
  ];
}
