#!/bin/bash

set -e

# Clone the Factory Engine repository
rm -rf /tmp/FactoryEngine
git clone git@github.com:FactoryEngine/FactoryEngine.git /tmp/FactoryEngine

# Install the FE CLI
mkdir -p ~/.fedata/cli
cp -r --remove-destination /tmp/FactoryEngine/cli ~/.fedata/
bash ~/.fedata/cli/install_fe.sh clean
bash ~/.fedata/cli/install_fe.sh

# Install FactoryEngine core
fe core install /tmp/FactoryEngine/core --ignore-existing --copy