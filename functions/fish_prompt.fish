set -g __fish_git_prompt_color_prefix "F4502D"
set -g __fish_git_prompt_color_suffix "F4502D"

set -g __fish_git_prompt_char_stateseparator "   
"
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_hide_untrackedfiles 1

set -g __fish_git_prompt_color_branch "F4502D"

set -g __fish_git_prompt_showupstream "informative"
set -g __fish_git_prompt_char_upstream_ahead "  "
set -g __fish_git_prompt_char_upstream_behind "  "
set -g __fish_git_prompt_char_upstream_prefix ""
set -g __fish_git_prompt_color_upstream green



set -g __fish_git_prompt_char_stagedstate "  "
set -g __fish_git_prompt_color_stagedstate "FFF272"

set -g __fish_git_prompt_char_dirtystate " "
set -g __fish_git_prompt_color_dirtystate "7296FF"

set -g __fish_git_prompt_char_untrackedfiles " "
set -g __fish_git_prompt_color_untrackedfiles "FFB272"

set -g __fish_git_prompt_char_conflictedstate " 󰞇 "
set -g __fish_git_prompt_char_cleanstate " "
set -g __fish_git_prompt_color_cleanstate green




set -g __fish_git_prompt_color_invalidstate red





####################
function fish_prompt

    #USER
    set_color "F4502D"
    printf '󱥗 %s' $USER
    set_color normal
    
    #PATH
    set_color brblue
    printf '  '
    printf '%s' (prompt_pwd)
    set_color normal

    #GIT
    printf "%s" (fish_git_prompt)
    
    # VIRTUAL ENVIROMENT

    #INPUT
    echo
    printf ' 󱞪 '
    set_color normal
end
