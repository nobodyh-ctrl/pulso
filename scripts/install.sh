#!/bin/bash

echo "Installing Pulso..."

INSTALL_DIR="$HOME/.pulso"

mkdir -p $INSTALL_DIR

echo "Cloning Pulso repository..."

git clone https://github.com/nobodyh-ctrl/pulso.git $INSTALL_DIR

echo "Installing CLI..."

sudo ln -sf $INSTALL_DIR/cli/pulso.sh /usr/local/bin/pulso

chmod +x /usr/local/bin/pulso

echo ""
echo "Pulso installed successfully!"
echo ""
echo "Run:"
echo "pulso run"