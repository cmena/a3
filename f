#!/bin/bash
set -u; set -e

# shellcheck source=/dev/null
source "$(dirname "${BASH_SOURCE[0]}")/_a3"

hg_repo && {
    hg pull
    exit
}

git_repo && {
    git fetch "$@"
    exit
}

echo "= $(basename "$0"): no repo here."
