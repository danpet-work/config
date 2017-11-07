export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="amuse"
HIST_STAMPS="mm/dd/yyyy"
plugins=(git history git-flow mvn)
export PATH=$HOME/bin:/usr/local/bin:/c/dev/scripts:$PATH
export EDITOR='vi'
source $ZSH/oh-my-zsh.sh

# aliases
## common
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias ll="ls -la --color"
alias week='date +"%V"'

## git
alias gc='git checkout -'
alias pull='git pull origin HEAD'
alias push='git push -f origin $(git name-rev --name-only HEAD)'

## maven
alias mci='mvn clean install'

#PROMPT='%(?..%{$fg_bold[red]%}exit %?
#%{$reset_color%})%{$bold_color%}$(git_prompt_status)%{$reset_color%}$(git_prompt_info)%{$fg[cyan]%}%{$fg[yellow]%}%M:%{$fg[green]%}%~%{$reset_color%}%(!.#.$) '

PROMPT='%(?..%{$fg_bold[red]%}exit %?
%{$reset_color%})'\
'%{$bold_color%}$(git_prompt_status)%{$reset_color%}'\
'$(git_prompt_info)'\
'%{$fg[$user_color]%}%~%{$reset_color%}'\
'
%(!.#.>) '
