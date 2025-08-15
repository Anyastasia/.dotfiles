set -Ux fish_term256 1

set -gx EDITOR nvim
set -gx HYPRSHOT_DIR /home/alice/screenshots
set -gx MOZ_PROFILER_STARTUP 1
if status is-interactive

    starship init fish | source
        # Commands to run in interactive sessions can go here
end


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# composer
fish_add_path /usr/local/bin/composer.phar

#composer vendor
fish_add_path -a ~/.config/composer/vendor 
