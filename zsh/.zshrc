#
# Alias
#
alias aws="docker run -it -v ~/.aws:/root/.aws --rm amazon/aws-cli:2.2.35"

# OCD
alias dcrm="docker ps -aq | xargs docker rm -f"
alias dvrm="docker volume ls -q | xargs docker volume rm"

# Private
source ~/.workrc

#
# Prompt
#
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats ' (%b)'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='${PWD/#$HOME/~}${vcs_info_msg_0_} > '
