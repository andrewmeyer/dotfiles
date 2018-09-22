function swpass
  if count $argv > /dev/null
    echo "setting pass to use $argv"
    set -e PASSWORD_STORE_DIR
    set -g -x PASSWORD_STORE_DIR $argv
  else
    echo "unsetting PASSWORD_STORE_DIR ( ~/.password-store)"
    set -e PASSWORD_STORE_DIR
  end
end
