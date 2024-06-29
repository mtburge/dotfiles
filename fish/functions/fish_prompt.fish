function fish_prompt
  set -g __fish_git_prompt_show_informative_status 1
  set -g __fish_git_prompt_hide_untrackedfiles 1

  set -g __fish_git_prompt_color_branch red --bold
  set -g __fish_git_prompt_showupstream "informative"
  set -g __fish_git_prompt_char_upstream_ahead "↑"
  set -g __fish_git_prompt_char_upstream_behind "↓"
  set -g __fish_git_prompt_char_upstream_prefix ""

  set -g __fish_git_prompt_char_stagedstate "++"
  set -g __fish_git_prompt_char_dirtystate "+"
  set -g __fish_git_prompt_char_untrackedfiles "?"
  set -g __fish_git_prompt_char_conflictedstate "!"
  set -g __fish_git_prompt_char_cleanstate "✔"

  set -g __fish_git_prompt_color_dirtystate blue
  set -g __fish_git_prompt_color_stagedstate yellow
  set -g __fish_git_prompt_color_invalidstate red
  set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
  set -g __fish_git_prompt_color_cleanstate green
  echo -n -s \n (prompt_login):(prompt_pwd) (fish_vcs_prompt) " -> "
end