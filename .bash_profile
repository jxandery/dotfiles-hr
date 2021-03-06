source ~/.bashrc

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias ltmate="tmate_ssh=tmate display -p '#{tmate_ssh}'"

terminate(){
    lsof -P | grep ':3000' | awk '{print $2}' | xargs kill -9 
  }
export PATH=~/.rbenv/shims:.git/safe/../../bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:~/dotfiles/bin
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
