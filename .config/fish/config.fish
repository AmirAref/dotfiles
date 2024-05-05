if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_greeting

# aliases 
# source ~/.shell_aliases

# abbreviations

# git
abbr --add gs git status
abbr --add gst git stash
abbr --add gl git log 
abbr --add glo git log --oneline --all --graph
abbr --add ga git add
abbr --add gc git cz
abbr --add gp git push
abbr --add gch git checkout
# system
abbr --add cl clear
abbr --add mk mkdir
abbr --add unset set --erase
# cusotm
abbr --add cfg /usr/bin/git --work-tree=$HOME --git-dir=$HOME/.dotfiles
abbr --add jn jupyter-notebook
abbr --add ff fastfetch
abbr --add kdrf kdeconnect-cli --refresh
abbr --add vim nvim
#abbr --add subl LANG=en_US.UTF-8 LC_TYPE=en_US.UTF-8 subl
abbr --add ptree tree --gitignore -I "__pycache__" -C --dirsfirst --sort mtime -r
abbr --add buckle buckle -p ~/bucklespring/wav/ -f -g 30 -m "0x6b"
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
abbr --add enable_proxy "export {all_proxy,ALL_PROXY,http_proxy,HTTP_PROXY}=\"http://127.0.0.1:2081\""
abbr --add disable_proxy set --erase {all_proxy,ALL_PROXY,http_proxy,HTTP_PROXY}
#export {all_proxy,ALL_PROXY,http_proxy,HTTP_PROXY}=http://127.0.0.1:2081
export {no_proxy,NO_PROXY}=127.0.0.1,localhost

# add PATH
export PATH="/home/amir/.local/bin:$PATH"

# show VIRTUAL_ENV name in fish prompt
functions -c fish_prompt _old_fish_prompt
function fish_prompt
  if set -q VIRTUAL_ENV
    echo -n -s  "(" (basename "$VIRTUAL_ENV") ")" " "
  end
  _old_fish_prompt
end

