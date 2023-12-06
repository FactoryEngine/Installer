#!/bin/bash

# Clone the Factory Engine repository
git clone git@github.com:FactoryEngine/FactoryEngine.git && \

# Enter Factory Engine directory
cd FactoryEngine && \

# Set up Factory Engine CLI
cd cli && ./install_fe.sh clean && ./install_fe.sh && \

# Build and set up FactoryEngine
cd ../core && ./setup.sh && \

# Install FactoryEngine core
fe core install . && \

# Delete installer
cd ../../ && rm install.sh