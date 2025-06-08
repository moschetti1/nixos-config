{
    programs.helix = {
        enable = true;
        settings = {
            theme = "autumn_night";
            editor = {
                line-number = "relative";
                lsp.display-messages = true;
            };
            keys.normal = {
                space.space = "file_picker";
                space.w = ":w";
                space.q = ":q";
                A-j = ["extend_to_line_bounds" "delete_selection" "paste_after"];
                A-k = ["extend_to_line_bounds" "delete_selection" "move_line_up" "paste_before"];
                esc = [ "collapse_selection" "keep_primary_selection" ];
            
            };
        };
        languages = {
            language = [
            {
                name = "typescript";
                auto-format = true;
            }

            {
                name = "go";
                auto-format = true;
                formatter = ["gofmt"];
            }
            {
                name = "python";
                language-servers = ["pyright"];
                auto-format = true;    
            }
            ];
            language-server.pyright = {
                command = "pyright-langserver";
                args = ["--stdio"];  
            };
            # language-server.golangci-lint-lsp = {
            #     command = "golangci-lint-langserver";
            # };

            # language-server.golangci-lint-lsp.config = {
            #     command = ["golangci-lint" "run" "--out-format" "json" "--issues-exit-code=1"];
            # };
         };
     };
}
