{
  programs.zed-editor = {
    enable = true;
    extensions = ["nix" "go" "svelte" "typescript" "odin"];
    userSettings = {
      project_panel = {
        dock="right";
      };
      lsp = {
          nix = {
              binary = {
                  path_lookup = true;
              };
          };
          svelte = {
              binary = {
                path_lookup = true;
              };
          };
          odin = {
              binary = {
                path_lookup = true;
              };
          };
          typescript = {
            binary = {
              path_lookup=true;
            };
          };
      };
      theme = {
        mode = "system";
        light = "Gruvbox Light Soft";
        dark = "Gruvbox Dark";
        transparency = 0.65;
      };
      icon_theme = {
        mode = "system";
        light = "Material Icon Theme";
        dark = "Material Icon Theme";
      };
    };
  };
}
