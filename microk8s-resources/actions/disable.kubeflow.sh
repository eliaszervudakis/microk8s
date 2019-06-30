#!/usr/bin/env bash

set -e

source $SNAP/actions/common/utils.sh

# Uninstall Kubeflow
export KUBEFLOW_VERSION=${KUBEFLOW_VERSION:-0.5.1}  # the version of kubeflow to use
export KUBEFLOW_SRC=${KUBEFLOW_SRC:-"${HOME}/kubeflow/${KUBEFLOW_VERSION}"}

${KUBEFLOW_SRC}/scripts/kfctl.sh delete all