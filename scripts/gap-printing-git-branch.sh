#!/bin/bash
GAPDIR="/home/sergio/projects/gap"
GAP="${GAPDIR}/bin/gap.sh"
GAP_EXTRA_PKGS="/home/sergio/projects/"

find_git_branch() {
  # Based on: http://stackoverflow.com/a/13003854/170413
  local branch
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    if [[ "$branch" == "HEAD" ]]; then
      branch='detached*'
    fi
    git_branch="$branch"
  else
    git_branch=""
  fi
}

CurrentDir="$PWD"
cd $GAPDIR
find_git_branch
echo -e "Using branch:\t${git_branch}\n"
cd $CurrentDir

exec ${GAP} -l "${GAP_EXTRA_PKGS};" "$@"
