#!/bin/bash

echo "[START] Installing Dependencies"

DEPS="php7.2-dev zip unzip vim git"

# Installing the deps
sudo apt install -y ${DEPS}

echo "[DONE] Dependencies Installed!";
