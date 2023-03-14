#!/bin/sh

if ! type zsh > /dev/null 2>&1; then
    echo ' => Installing script dependency Zsh.'

    sudo apt-get -y update
    sudo apt-get -y install zsh
    wget https://repo.radeon.com/amdgpu-install/5.4.3/ubuntu/jammy/amdgpu-install_5.4.50403-1_all.deb
    sudo apt-get install ./amdgpu-install_5.4.50403-1_all.deb
    sudo amdgpu-install --usecase=rocm
fi

SCRIPT=$(readlink -f "${0}")
SCRIPT_DIR=$(dirname "${SCRIPT}")

zsh ${SCRIPT_DIR}/build-linux.zsh "${@}"
