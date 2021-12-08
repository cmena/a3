#!/bin/bash
set -u; set -e

# shellcheck source=/dev/null
source "$(dirname "${BASH_SOURCE[0]}")/_a3"

hg_repo && {
    hg pull
}

git_repo && {
    git fetch
}

echo "= $(basename "$0"): no repo here."
