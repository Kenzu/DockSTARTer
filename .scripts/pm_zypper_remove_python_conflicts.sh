#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

pm_zypper_remove_python_conflicts() {
    info "Removing conflicting Python packages."
    zypper remove -y python-cryptography \
        python3-cryptography > /dev/null 2>&1 || true
}

test_pm_zypper_remove_python_conflicts() {
    # run_script 'pm_zypper_remove_python_conflicts'
    warn "CI does not test pm_zypper_remove_python_conflicts."
}
