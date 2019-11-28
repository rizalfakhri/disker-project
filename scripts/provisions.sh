#!/bin/bash

# This script will provision the services.

hash git

if [ $? -eq 1 ]; then
    sudo apt install git
fi

# Clone the repository
git clone https://github.com/rizalfakhri/disker-project

# Entering the directory
cd disker-project

# Update the Submodules
git submodule update --init --recursive

# Run the Docker Services
docker-compose up

