#!/bin/bash

# Build script for creating .deb package
# Run this on a Linux system with dpkg-deb installed

set -e

# Clean previous builds
rm -f huh_1.0_all.deb

# Build the package
dpkg-deb --build huh-deb

# Rename to proper format
mv huh-deb.deb huh_1.0_all.deb

echo "✓ Package built: huh_1.0_all.deb"
echo ""
echo "Install with:"
echo "  sudo dpkg -i huh_1.0_all.deb"
echo ""
echo "Or add to a repository for apt installation"
