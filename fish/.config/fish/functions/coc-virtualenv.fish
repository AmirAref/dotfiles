
# Autoadd virtualenv path to coc settings file; Workaround for nvim
function coc-virtualenv
  if test -e "$VIRTUAL_ENV";
    # create .vim directory
    mkdir './.vim'
    # insert virtualenv path to coc-settings.json
    echo -e "{\n\t\"python.venvPath\":\"$VIRTUAL_ENV\"\n}" > './.vim/coc-settings.json'
    echo "$VIRTUAL_ENV -> .vim/coc-settings.json added !"
  else
    echo "plase activate your virtualenv first !"
  end
end;
