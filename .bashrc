# Function to generate prompt after each command.
PROMPT_COMMAND=__prompt_command

function __prompt_command() {
    # Variables for color codes.
    local EMPTY='\[\033[00;00m\]'
    local GRAY='\[\033[00;30m\]'
    local RED='\[\033[00;31m\]'
    local GREEN='\[\033[00;32m\]'
    local YELLOW='\[\033[00;33m\]'
    local BLUE='\[\033[00;34m\]'
    local PINK='\[\033[00;35m\]'
    local TRQ='\[\033[00;36m\]'
    local CYAN='\[\033[01;36m\]'
    local WHITE='\[\033[01;37m\]'

    # Variables for git information.
    local git_branch=''
    local git_stash_state=''
    local stash_state_string=''
    local git_uncommitted=''
    local branch_color

    # Check if in git repo.
    inside_git_repo=$(git rev-parse --is-inside-work-tree 2>/dev/null)

    if [ "$inside_git_repo" ]; then
        git_branch=$(git branch | awk '/^\*/ {for (i=2; i<NF;i++) printf $i " "; print $NF;}')
        git_stash_state=$(git stash list 2>/dev/null)
        git_uncommitted=$(git status | grep "Changes not staged for commit" 2>/dev/null)

        if [ -n "$git_branch" ]; then
            git_branch="("$git_branch") "
        fi

        if [ -n "$git_stash_state" ]; then
            stash_state_string="(s"
            stash_state_string+=$(echo $git_stash_state 2>/dev/null | wc -l)
            stash_state_string+=") "
        fi

        if [ -n "$git_uncommitted" ]; then
            branch_color=$RED
        else
            branch_color=$GREEN
        fi
    fi

    PS1="${RED}┌ ${TRQ}\u${YELLOW}@${GREEN}\h ${YELLOW}\w ${branch_color}${git_branch}${RED}${stash_state_string}${EMPTY}\n${RED}└──>${EMPTY} "
}

# Set environment variables by sourcing my custom envrc
source $HOME/.scripts/envrc
# Set aliases by sourcing my custom aliasrc
source $HOME/.scripts/aliasrc

### Enable vi mode ###
#set -o vi

### Generate custom colorscheme ###
#wal -c && wal -qei Wallpaper --saturate 0.7

