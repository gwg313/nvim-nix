{
  plugins.floaterm = { enable = true; };

  maps = {
    normal = {
      "<c-t>" = {
        action = ":FloatermToggle<CR>";
        silent = true;
      };
    };
  };
}
