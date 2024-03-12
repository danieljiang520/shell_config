module load gcc/12.2.1

# Load version control information
__git_info() {
    local branch=$(git branch 2>/dev/null | grep '^*' | colrm 1 2)
    if [ ! -z "$branch" ]; then
        echo -e "\e[33m($branch)\e[0m " # Yellow color for git branch
    fi
}

# Set up the prompt (with git branch name)
export PS1='\[\e[35m\]\u\[\e[0m\]@\d \W \[\e[34m\]$(__git_info)\[\e[0m\]\$ '

# Aliases
alias python=python3
alias pip='python -m pip'