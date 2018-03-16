export ZSH=$HOME/.oh-my-zsh
HIST_STAMPS="mm/dd/yyyy"
ZSH_THEME="amuse"
ZSH_THEME="amuse"
plugins=(git history git-flow mvn jira wd)
export PATH=$HOME/bin:/usr/local/bin:/c/dev/scripts:$PATH
source $ZSH/oh-my-zsh.sh
export EDITOR='vi'
export JIRA_URL='https://jira.resurs.loc'

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

#PROMPT='%(?..%{$fg_bold[red]%}exit %?
#%{$reset_color%})'\
#'%{$bold_color%}$(git_prompt_status)%{$reset_color%}'\
#'$(git_prompt_info)'\
#'%{$fg[$user_color]%}%~%{$reset_color%}'\
#'
#%(!.#.>) '
#
#local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${ret_status}%{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'\
'
> '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
