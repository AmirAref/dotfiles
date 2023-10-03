set fish_greeting

# aliases 
source ~/.shell_aliases

# abbreviations

# git
abbr --add gs git status
abbr --add gst git stash
abbr --add gl git log 
abbr --add glo git log --oneline --all --graph
abbr --add ga git add
abbr --add gc git commit
abbr --add gp git push
abbr --add gch git checkout
# system
abbr --add cl clear
abbr --add mk mkdir
abbr --add unset set --erase
# cusotm
abbr --add cfg /usr/bin/git --work-tree=$HOME --git-dir=$HOME/.dotfiles
abbr --add jn jupyter-notebook
abbr --add subl LANG=en_US.UTF-8 LC_TYPE=en_US.UTF-8 subl


# use the last command by !! 
function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t $history[1]; commandline -f repaint
        case "*"
            commandline -i !
    end
end

function fish_user_key_bindings
    bind ! bind_bang
end

# varibales
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# add PATH
export PATH="/home/amir/.local/bin:$PATH"
