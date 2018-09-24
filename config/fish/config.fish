set -g -x fish_greeting 'Establishing battlefield control...'
set PATH /home/ameyer/bin $PATH
set -x EDITOR 'vim'
set -x ANSIBLE_NOCOWS 1
set -x ANSIBLE_STDOUT_CALLBACK debug
set -x TERM xterm-256color
set -x UID (bash -c 'id -u')
set -x GID (bash -c 'id -g')
#if local_exports.fish exists, source it
if test -e ~/.config/fish/local_exports.fish
  source ~/.config/fish/local_exports.fish
end
#if we are connecting via gpg, set the gpg tty to the ssh socket
if test -n $SSH_TTY
  set -x GPG_TTY $SSH_TTY
end
#if a dircolors file exists, load it
if test -e ~/.dircolors
  set -x LS_COLORS (bash -c 'eval `dircolors ~/.dircolors`; echo $LS_COLORS')
end
#if a global aliases file exists, load it
if test -e ~/.config/fish/global_aliases.fish
  source ~/.config/fish/global_aliases.fish
end
#if a local aliases file exists, load it
if test -e ~/.config/fish/local_aliases.fish
  source ~/.config/fish/local_aliases.fish
end
# if gpg-agent is installed launch it at startup,
set 99GPG_AGENT (bash -c 'which gpg-agent')
set 99GPGCONF (bash -c 'which gpgconf')
if test -n $99GPG_AGENT -a -n $99GPGCONF
  bash -c "eval `$99GPGCONF --launch gpg-agent`"
end
#if gnupg's ssh support is enabled, force us to use it
if test -e ~/.gnupg/S.gpg-agent.ssh
  set -x SSH_AUTH_SOCK ~/.gnupg/S.gpg-agent.ssh
end
#test if there is an motd
if test -e /usr/local/bin/motd
  bash -c '/usr/local/bin/motd'
else
  if test -e /etc/motd
    bach -c 'cat /etc/motd'
  end
end

#fish git stuff
set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'


#function fish_prompt
#  set last_status $status
#
#  set_color $fish_color_cwd
#  printf '%s' (prompt_pwd)
#  set_color normal
#
#  printf '%s ' (__fish_git_prompt)
#
#  set_color normal
#end
