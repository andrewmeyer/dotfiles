function swpass
  if count $argv > /dev/null
    echo "setting pass to use $argv"
    set -g -x PASSWORD_STORE_DIR $argv
  else
    echo "setting pass to use ~/.password-store"
    set -g -x PASSWORD_STORE_DIR ~/.password-store
  end
end
