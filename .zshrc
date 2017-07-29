export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="amuse"
HIST_STAMPS="mm/dd/yyyy"
plugins=(chucknorris git history git-flow mvn node npm)

export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR='vi'
source $ZSH/oh-my-zsh.sh

# Aliases
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias ll="ls -la --color"
alias week='date +"%V"'

PROMPT='%(?..%{$fg_bold[red]%}exit %?
%{$reset_color%})'\
'%{$bold_color%}$(git_prompt_status)%{$reset_color%}'\
'$(git_prompt_info)'\
'%{$fg[$user_color]%}%~%{$reset_color%}'\
'
%(!.#.>) '
