set -g -x fish_greeting 'Establishing battlefield control...'
set PATH /home/ameyer/mypath $PATH
set LD_LIBRARY_PATH /usr/local/pulse $LD_LIBRARY_PATH
set MSF_DATABASE_CONFIG /opt/metasploit-framework/config/database.yml
set -x ENCFS6_CONFIG '/home/ameyer/.encfs6.xml'
set -x EDITOR 'vim'
set -x ANSIBLE_VAULT_PASSWORD_FILE ~/.vault_pass.conf
set -x ANSIBLE_CONFIG ~/code/ansible/ansible1-ord6/ansible.cfg
set -x ANSIBLE_INVENTORY ~/ansible1-ord6/hosts
set -x ANSIBLE_ROLES_PATH ~/ansible-roles/roles
set -x ANSIBLE_NOCOWS 1
#if we are connecting via gpg, set the gpg tty to the ssh socket
if test -n $SSH_TTY
  set -x GPG_TTY $SSH_TTY
end
#if a dircolors file exists, load it
if test -e ~/.dircolors
  set -x LS_COLORS (bash -c 'eval `dircolors ~/.dircolors`; echo $LS_COLORS')
end
#if an aliases file exists, load it
if test -e ~/.config/fish/aliases.fish
  source ~/.config/fish/aliases.fish
end
#if gnupg's ssh support is enabled, force us to use it
if test -e ~/.gnupg/S.gpg-agent.ssh
  set -x SSH_AUTH_SOCK ~/.gnupg/S.gpg-agent.ssh
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
