{ pkgs, ... }: {
  home.packages = with pkgs; [
    jetbrains.webstorm
    jetbrains.pycharm-professional
    jetbrains.goland
    jetbrains.idea-ultimate
    jetbrains.rust-rover
    jetbrains.rider
    android-studio
    zed-editor
  ];

  programs.vscode = {
    enable = true;
    # extensions = with pkgs.vscode-extensions; [
    #   "mads-hartmann.bash-ide-vscode"
    #   "github.copilot"
    #   "github.copilot-chat"
    #   "github.github-vscode-theme"
    #   "golang.go"
    #   "bbenoist.nix"
    #   "jnoortheen.nix-ide"
    #   "bradlc.vscode-tailwindcss"
    #   "vscodevim.vim"
    # ];
    # settings = {
    #   "workbench.colorTheme" = "GitHub Light";
    #   "window.zoomLevel" = 2;
    #   "vim.handleKeys" = {
    #     "<C-d>" = true;
    #     "<C-p>" = false;
    #   };
    #   "vim.leader" = "<space>";
    #   "vim.useSystemClipboard" = true;
    #   "extensions.experimental.affinity" = { "vscodevim.vim" = 1; };
    #   "editor.formatOnSave" = true; #   "[templ]" = { "editor.defaultFormatter" = "a-h.templ"; };
    #   "tailwindCSS.includeLanguages" = { "templ" = "html"; };
    #   "emmet.includeLanguages" = { "templ" = "html"; };
    #   "editor.linkedEditing" = true;
    #   "html.autoClosingTags" = true;
    # };
    # keybindings = [
    #   {
    #     key = "ctrl+l";
    #     command = "-workbench.action.chat.clear";
    #     when = "hasChatProvider && inChat";
    #   }
    #   {
    #     key = "ctrl+l";
    #     command = "editor.action.inlineSuggest.commit";
    #     when =
    #       "inlineSuggestionHasIndentationLessThanTabSize && inlineSuggestionVisible && !editorHoverFocused && !editorTabMovesFocus && !suggestWidgetVisible";
    #   }
    #   {
    #     key = "tab";
    #     command = "-editor.action.inlineSuggest.commit";
    #     when =
    #       "inlineSuggestionHasIndentationLessThanTabSize && inlineSuggestionVisible && !editorHoverFocused && !editorTabMovesFocus && !suggestWidgetVisible";
    #   }
    # ];
  };

  programs.emacs = {
    enable = true;
    package = pkgs.emacs29;
    extraPackages = epkgs: [ epkgs.vterm ];
  };

  programs.helix = {
    enable = true;
    settings = {
      theme = "snazzy";

      editor = {
        line-number = "relative";

        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };
      };

      keys.normal = { space.space = "file_picker"; };
    };

    languages = {

    };
  };
}
