if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -Ux EDITOR vim
set -U fish_greeting
fish_add_path /opt/arm-toolchain/qt6-host/bin
fish_add_path /opt/arm-toolchain/glibc/qt6/bin

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
