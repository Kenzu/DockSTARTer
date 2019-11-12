#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

pm_zypper_repos() {
    info "zypper does not require additional repositories."
}

test_pm_zypper_repos() {
    # run_script 'pm_zypper_repos'
    warn "CI does not test pm_zypper_repos."
}
