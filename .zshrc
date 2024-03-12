# Load version control information
autoload -Uz vcs_info
function precmd() {
    vcs_info
}

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%f '

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%B%F{cyan}%n%f%b@%W %1~ ${vcs_info_msg_0_}%# '

alias python=python3
alias pip='python -m pip'

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
