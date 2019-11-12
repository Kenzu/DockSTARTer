#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

pm_zypper_upgrade() {
    if [[ ${CI:-} != true ]]; then
        notice "Upgrading packages. Please be patient, this can take a while."
        local REDIRECT="> /dev/null 2>&1"
        if [[ -n ${VERBOSE:-} ]] || run_script 'question_prompt' "${PROMPT:-}" N "Would you like to display the command output?"; then
            REDIRECT=""
        fi
        eval zypper update -y "${REDIRECT}" || fatal "Failed to upgrade 
packages from zypper."
    fi
}

test_pm_zypper_upgrade() {
    # run_script 'pm_zypper_upgrade'
    warn "CI does not test pm_zypper_upgrade."
}
