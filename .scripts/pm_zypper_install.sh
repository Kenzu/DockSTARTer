#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

pm_zypper_install() {
    info "Removing apt alias packages if they exists."
    zypper rm -y zypper-aptitude > /dev/null 2>&1 || fatal "Failed to remove zypper-aptitude alias package."
    info "Installing dependencies."
    zypper install -y curl git grep newt python3 python3-pip rsync sed > /dev/null 2>&1 || fatal "Failed to install dependencies from zypper."
    # https://cryptography.io/en/latest/installation/#building-cryptography-on-linux
    info "Installing python dependencies."
    zypper install -y gcc libffi-devel python3-devel libopenssl-devel > /dev/null 2>&1 || fatal "Failed to install python cryptography dependencies from zypper."
}

test_pm_zypper_install() {
    # run_script 'pm_zypper_install'
    warn "CI does not test pm_zypper_install."
}
