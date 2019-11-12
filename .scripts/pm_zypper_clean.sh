#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

pm_zypper_clean() {
    info "Removing unused packages."
    #zypper > /dev/null 2>&1 || fatal "Failed to remove unused packages from 
zypper."
    info "Cleaning up package cache."
    zypper clean -a > /dev/null 2>&1 || fatal "Failed to cleanup cache from 
zypper."
}

test_pm_zypper_clean() {
    # run_script 'pm_zypper_clean'
    warn "CI does not test pm_zypper_clean."
}
