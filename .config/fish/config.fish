set fish_greeting

# aliases 
source ~/.shell_aliases

# abbreviations
abbr --add gs git status
abbr --add gl git log 
abbr --add glo git log --oneline --all --graph
abbr --add ga git add
abbr --add gc git commit
abbr --add cfg /usr/bin/git --work-tree=$HOME --git-dir=$HOME/.cfg
abbr --add cl clear
abbr --add mk mkdir
abbr --add jn jupyter-notebook


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

# add PATH
export PATH="/home/amir/.local/bin:$PATH"
