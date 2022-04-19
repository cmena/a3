#!/bin/bash
set -u; set -e

# shellcheck source=/dev/null
source "$(dirname "${BASH_SOURCE[0]}")/_a3"

hg_repo && {
    hg clean -v
    exit
}

git_repo && {
    git clean -d -f
    exit
}

echo "= $(basename "$0"): no repo here."
