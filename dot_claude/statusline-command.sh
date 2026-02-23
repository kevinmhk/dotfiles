#!/usr/bin/env bash
# Claude Code statusLine command
# Mirrors the user's Zsh PROMPT: user@host [HH:MM:SS] -> ~/dir [git branch]

input=$(cat)
cwd=$(echo "$input" | jq -r '.workspace.current_dir // .cwd // empty')
if [ -z "$cwd" ]; then
  cwd=$(pwd)
fi

user=$(whoami)
host=$(hostname -s)
time_str=$(date +%H:%M:%S)

# Shorten home directory to ~
home_dir="$HOME"
short_cwd="${cwd/#$home_dir/\~}"

# Git branch (skip lock acquisition to avoid conflicts)
git_info=""
if git -C "$cwd" rev-parse --git-dir >/dev/null 2>&1; then
  branch=$(git -C "$cwd" symbolic-ref --short HEAD 2>/dev/null || git -C "$cwd" rev-parse --short HEAD 2>/dev/null)
  if [ -n "$branch" ]; then
    git_info=" ($branch)"
  fi
fi

# ANSI colors (dimmed-friendly)
bold_green='\033[1;32m'
bold_red='\033[1;31m'
bold_cyan='\033[1;36m'
bold_yellow='\033[1;33m'
cyan='\033[0;36m'
reset='\033[0m'

printf "${bold_green}%s${bold_red}@${bold_cyan}%s${reset} ${bold_yellow}[%s]${reset} -> ${cyan}%s${reset}%s" \
  "$user" "$host" "$time_str" "$short_cwd" "$git_info"
