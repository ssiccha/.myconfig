#!/bin/sh

GAP_EXE=$GAP_DIR
if [ "x$GAP_DIR" = "x" ]; then
  GAP_DIR=$(cd "PATH-TO-GAP" && pwd)
  GAP_EXE="PATH-TO-GAP"
fi

GAP_BRANCH_NAME=$(cd $GAP_DIR && git rev-parse --abbrev-ref HEAD)

echo "Starting GAP with branch: $GAP_BRANCH_NAME"
exec "$GAP_EXE/gap" -l "/home/sergio/projects/GAP.jl;/home/sergio/projects;$GAP_DIR" "$@"

