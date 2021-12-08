#!/bin/bash
set -u; set -e

# shellcheck source=/dev/null
source "$(dirname "${BASH_SOURCE[0]}")/_a3"

hg_repo && {
    die "= $(basename "$0"): not implemented."
}

git_repo && {
    die "= $(basename "$0"): not implemented."
}

echo "= $(basename "$0"): no repo here."
