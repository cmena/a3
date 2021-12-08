#!/bin/bash
set -u; set -e

# shellcheck source=/dev/null
source "$(dirname "${BASH_SOURCE[0]}")/_a3"

hg_repo && {
    hg st
    exit
}

git_repo && {
    git status --short
    exit
}

echo "= status: no repo here."
