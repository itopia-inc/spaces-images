#!/bin/bash

[[ "${VDI_launchIDE:-eclipse}" != eclipse ]] && exit 0

FULLSCREEN="${VDI_fullscreenIDE:-true}"

function fullscreen_window_by_name() {
    NAME_REGEX=$1
    TIMEOUT=${2:-15}
    [[ -z "$NAME_REGEX" ]] && echo "USAGE: fullscreen_window <window name regex> <timeout|15>" && return 1
    # Wait for window, get window ID.
    echo "Waiting for window named: '${NAME_REGEX}'"
    export WID=
    export t=0
    export start=$(date +%s)
    while [[ -z "$WID" && $t -lt $TIMEOUT ]]; do
        WID=$(xdotool search --onlyvisible --name "${NAME_REGEX?}" | tail -1)
        [[ -z "${WID}" ]] && sleep 0.5
        curr_t=$(date +%s)
        ((t=curr_t - start))
    done
    if [[ $t -ge $TIMEOUT ]]; then
        echo "ERROR: timeout waiting for window with WM class: '${WM_CLASS}'"
        return 1
    fi
    echo "Found window named: '${NAME_REGEX}', making fullscreen."
    wmctrl -ir $WID -b add,fullscreen
}

# Launch IDE with cloned repo, if Selkies file exists, otherwise, launch and pass arguments.
CLONE_FILE="${HOME}/.config/selkies-user-init/git_repo_cloned"
if [[ -e ${CLONE_FILE} ]]; then
    REPO_DIR=$(cat ${CLONE_FILE})
    rm -f ${CLONE_FILE}
    /opt/Eclipse/eclipse ${REPO_DIR} &
    PID=$!
    if [[ "${FULLSCREEN}" == true ]]; then
        # Wait up to 15 minutes for main eclipse window.
        fullscreen_window_by_name ".*- Eclipse IDE" 900 &
    fi
    wait $PID
    exit
fi

# If no clone file exists, just launch the IDE with the given arguments.
/opt/Eclipse/eclipse $@ &
PID=$!
if [[ "${FULLSCREEN}" == true ]]; then
    # Wait up to 15 minutes for main eclipse window.
    fullscreen_window_by_name ".*- Eclipse IDE" 900 &
fi
wait $PID
exit