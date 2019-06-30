#!/usr/bin/env bash

set -e

source $SNAP/actions/common/utils.sh

# check if Kubeflow is already installed.  Download if it doesn't exist.
# Can be any version, we currently do not check wether there are newer versions available
export KUBEFLOW_SRC=${KUBEFLOW_SRC:-"${HOME}/kubeflow/"} 

if [ ! -d ${KUBEFLOW_SRC} ]; then
	git clone https://github.com/canonical-labs/kubeflow-tools
	kubeflow-tools/install-kubeflow.sh
else
	info "Skipping Kubeflow download - source directory already exists: ${KUBEFLOW_SRC}"
fi