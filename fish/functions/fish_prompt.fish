function _git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

function _git_colors
  set -l normal (set_color --bold cyan)                                               
  set -l git (set_color --bold white)                                             
    if [ (_git_branch_name) ]                                                     
      echo $git                                       
    else                                                                          
      echo $normal                                     
    end                 
end

function fish_greeting
	neofetch
end

function fish_prompt --description 'Write out the prompt'
	set -l color_cwd
    set -l suffix
    switch "$USER"
        case root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            else
                set color_cwd $fish_color_cwd
            end
            set suffix '#'
        case '*'
            set color_cwd $fish_color_cwd
            set suffix '>'
    end

    echo -n -s (_git_colors) '   ' (set_color --bold $color_cwd) (prompt_pwd) (set_color --bold normal) ' ' "$suffix "
end

function fish_right_prompt
  echo -n -s (_git_colors) "><(" (set_color normal) (pwd) (_git_colors) "((\"> "
  set_color normal
end
