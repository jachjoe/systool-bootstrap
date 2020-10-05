#!/bin/bash

# exit on failure
set -e

TOOLS_ROOT=${HOME}/Tools
SYSTEMTOOLS_DIR=${TOOLS_ROOT}/systemtools

function clone_systemtools {
  sudo apt update
  sudo apt -y install git
  mkdir -p ${TOOLS_ROOT}
  git -C ${TOOLS_ROOT} clone https://github.com/jachjoe/systemtools.git
}

function run_setup {
  /bin/bash ${SYSTEMTOOLS_DIR}/utils/systool.sh setup
}

# Run bootstrap
clone_systemtools
run_setup
