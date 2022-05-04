#!/bin/bash

[[ "${VDI_launchIDE:-idea}" != idea ]] && exit 0

# Launch IDE with cloned repo, if Selkies file exists, otherwise, launch and pass arguments.
CLONE_FILE="${HOME}/.config/selkies-user-init/git_repo_cloned"
if [[ -e ${CLONE_FILE} ]]; then
    REPO_DIR=$(cat ${CLONE_FILE})
    rm -f ${CLONE_FILE}
    exec /opt/IDEA-CE/bin/idea.sh ${REPO_DIR}
    exit
fi

# If no clone file exists, just launch the IDE with the given arguments.
exec /opt/IDEA-CE/bin/idea.sh $@
exit