#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

pm_zypper_remove_docker() {
    # https://docs.docker.com/install/linux/docker-ce/fedora/
    info "Removing conflicting Docker packages."
    #dnf -y remove docker > /dev/null 2>&1 || true
}

test_pm_zypper_remove_docker() {
    # run_script 'pm_zypper_remove_docker'
    warn "CI does not test pm_zypper_remove_docker."
}
