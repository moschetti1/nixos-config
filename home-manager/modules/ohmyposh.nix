{
    programs.oh-my-posh = {
        enable = true;
        enableBashIntegration = true;
        enableZshIntegration = true;
        useTheme = "atomic";
        settings = builtins.fromJSON (builtins.unsafeDiscardStringContext ''
        {
            "$schema": "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/schema.json",
            "blocks": [
                {
                    "alignment": "left",
                    "segments": [
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "leading_diamond": "\u256d\u2500\ue0b6",
                            "trailing_diamond": "",
                            "style": "diamond",
                            "template": "\uf120 {{ .Name }} ",
                            "type": "shell"
                        },           
                        {
                            "type": "nix-shell",
                            "style": "diamond",
                            "trailing_diamond": "",
                            "foreground": "#ffffff",
                            "background": "blue",
                            "template": "(nix-shell)"
                        },
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "trailing_diamond": "",
                            "background_templates": [
                                "{{ if or (.Working.Changed) (.Staging.Changed) }}#ffeb95{{ end }}",
                                "{{ if and (gt .Ahead 0) (gt .Behind 0) }}#c5e478{{ end }}",
                                "{{ if gt .Ahead 0 }}#C792EA{{ end }}",
                                "{{ if gt .Behind 0 }}#C792EA{{ end }}"
                            ],
                            "properties": {
                                "branch_icon": "\ue725 ",
                                "fetch_status": true,
                                "fetch_upstream_icon": true
                            },
                            "style": "diamond",
                            "template": " {{ .UpstreamIcon }}{{ .HEAD }}{{if .BranchStatus }} {{ .BranchStatus }}{{ end }}{{ if .Working.Changed }} \uf044 {{ .Working.String }}{{ end }}{{ if and (.Working.Changed) (.Staging.Changed) }} |{{ end }}{{ if .Staging.Changed }}<#ef5350> \uf046 {{ .Staging.String }}</>{{ end }} ",
                            "type": "git"
                        },
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "trailing_diamond": "",
                            "properties": {
                                "folder_icon": " \uf07b ",
                                "home_icon": "\ue617",
                                "style": "folder"
                            },
                            "style": "diamond",
                            "template": " \uf07b\uea9c {{ .Path }} ",
                            "type": "path"
                        }
                    ],
                    "type": "prompt"
                },
                {
                    "alignment": "right",
                    "segments": [
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "leading_diamond": "\ue0b6",
                            "properties": {
                                "fetch_package_manager": true,
                                "npm_icon": " <#cc3a3a>\ue5fa</> ",
                                "yarn_icon": " <#348cba>\ue6a7</>"
                            },
                            "style": "diamond",
                            "template": "\ue718 {{ if .PackageManagerIcon }}{{ .PackageManagerIcon }} {{ end }}{{ .Full }}",
                            "trailing_diamond": "\ue0b4 ",
                            "type": "node"
                        },
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "leading_diamond": "\ue0b6",
                            "style": "diamond",
                            "template": "\ue235 {{ if .Error }}{{ .Error }}{{ else }}{{ if .Venv }}{{ .Venv }} {{ end }}{{ .Full }}{{ end }}",
                            "trailing_diamond": "\ue0b4 ",
                            "type": "python"
                        },
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "leading_diamond": "\ue0b6",
                            "style": "diamond",
                            "template": "\ue738 {{ if .Error }}{{ .Error }}{{ else }}{{ .Full }}{{ end }}",
                            "trailing_diamond": "\ue0b4 ",
                            "type": "java"
                        },
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "leading_diamond": "\ue0b6",
                            "style": "diamond",
                            "template": "\ue77f {{ if .Unsupported }}\uf071{{ else }}{{ .Full }}{{ end }}",
                            "trailing_diamond": "\ue0b4 ",
                            "type": "dotnet"
                        },
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "leading_diamond": "\ue0b6",
                            "style": "diamond",
                            "template": "\ue626 {{ if .Error }}{{ .Error }}{{ else }}{{ .Full }}{{ end }}",
                            "trailing_diamond": "\ue0b4 ",
                            "type": "go"
                        },
                        {
                           "background": "#ffffff",
                            "foreground": "#333",
                            "leading_diamond": "\ue0b6",
                            "style": "diamond",
                            "template": "\ue7a8 {{ if .Error }}{{ .Error }}{{ else }}{{ .Full }}{{ end }}",
                            "trailing_diamond": "\ue0b4 ",
                            "type": "rust"
                        },
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "leading_diamond": " \ue0b6",
                            "style": "diamond",
                            "template": "\ue798 {{ if .Error }}{{ .Error }}{{ else }}{{ .Full }}{{ end }}",
                            "trailing_diamond": "\ue0b4 ",
                            "type": "dart"
                        },
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "leading_diamond": " \ue0b6",
                            "style": "diamond",
                            "template": "\ue753 {{ if .Error }}{{ .Error }}{{ else }}{{ .Full }}{{ end }}",
                            "trailing_diamond": "\ue0b4 ",
                            "type": "angular"
                        },
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "leading_diamond": " \ue0b6",
                            "style": "diamond",
                            "template": "\u03b1 {{ if .Error }}{{ .Error }}{{ else }}{{ .Full }}{{ end }}",
                            "trailing_diamond": "\ue0b4 ",
                            "type": "aurelia"
                        },
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "leading_diamond": " \ue0b6",
                            "style": "diamond",
                            "template": "{{ if .Error }}{{ .Error }}{{ else }}Nx {{ .Full }}{{ end }}",
                            "trailing_diamond": "\ue0b4 ",
                            "type": "nx"
                        },
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "leading_diamond": " \ue0b6",
                            "style": "diamond",
                            "template": "<#ca3c34>\ue624</> {{ if .Error }}{{ .Error }}{{ else }}{{ .Full }}{{ end }}",
                            "trailing_diamond": "\ue0b4 ",
                            "type": "julia"
                        },
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "leading_diamond": "\ue0b6",
                            "style": "diamond",
                            "template": "\ue791 {{ if .Error }}{{ .Error }}{{ else }}{{ .Full }}{{ end }}",
                            "trailing_diamond": "\ue0b4 ",
                            "type": "ruby"
                        },
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "leading_diamond": "\ue0b6",
                            "style": "diamond",
                            "template": "\uf104<#f5bf45>\uf0e7</>\uf105 {{ if .Error }}{{ .Error }}{{ else }}{{ .Full }}{{ end }}",
                            "trailing_diamond": "\ue0b4 ",
                            "type": "azfunc"
                        },
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "leading_diamond": "\ue0b6",
                            "style": "diamond",
                            "template": "\ue7ad {{.Profile}}{{if .Region}}@{{.Region}}{{end}}",
                            "trailing_diamond": "\ue0b4 ",
                            "type": "aws"
                        },
                        {
                           "background": "#ffffff",
                            "foreground": "#333",
                            "leading_diamond": "\ue0b6",
                            "style": "diamond",
                            "template": "\uf308 {{.Context}}{{if .Namespace}} :: {{.Namespace}}{{end}}",
                            "trailing_diamond": "\ue0b4",
                            "type": "kubectl"
                        },
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "leading_diamond": "\ue0b6",
                            "trailing_diamond": "<transparent,background>\ue0b2</>",
                            "properties": {
                                "linux": "\ue712",
                                "macos": "\ue711",
                                "windows": "\ue70f"
                            },
                            "style": "diamond",
                            "template": " {{ if .WSL }}WSL at {{ end }}{{.Icon}} ",
                            "type": "os"
                        },
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "background_templates": [
                                "{{if eq \"Charging\" .State.String}}#b8e994{{end}}",
                                "{{if eq \"Discharging\" .State.String}}#fff34e{{end}}",
                                "{{if eq \"Full\" .State.String}}#33DD2D{{end}}"
                            ],
                            "invert_powerline": true,
                            "powerline_symbol": "\ue0b2",
                            "properties": {
                                "charged_icon": "\uf240 ",
                                "charging_icon": "\uf1e6 ",
                                "discharging_icon": "\ue234 "
                            },
                            "style": "powerline",
                            "template": " {{ if not .Error }}{{ .Icon }}{{ .Percentage }}{{ end }}{{ .Error }}\uf295 ",
                            "type": "battery"
                        },
                        {
                            "background": "#ffffff",
                            "foreground": "#333",
                            "invert_powerline": true,
                            "leading_diamond": "\ue0b2",
                            "properties": {
                                "time_format": "_2,15:04"
                            },
                            "style": "diamond",
                            "template": " \uf073 {{ .CurrentDate | date .Format }} ",
                            "trailing_diamond": "\ue0b4",
                            "type": "time"
                        }
                    ],
                    "type": "prompt"
                },
                {
                    "alignment": "left",
                    "newline": true,
                    "segments": [
                        {
                            "foreground": "#ffffff",
                            "style": "plain",
                            "template": "\u2570\u2500",
                            "type": "text"
                        },
                        {
                            "foreground": "#ffffff",
                            "foreground_templates": [
                                "{{ if gt .Code 0 }}#ef5350{{ end }}"
                            ],
                            "properties": {
                                "always_enabled": true
                            },
                            "style": "plain",
                            "template": "\ue285\ueab6 ",
                            "type": "status"
                        }
                    ],
                    "type": "prompt"
                }
            ],
            "version": 3
        }
        
         '');
    };
}
