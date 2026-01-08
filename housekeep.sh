#!/usr/bin/env bash
set -ex

# Housekeep script to clean files ending with :Zone.Identifier
# These files are typically created by Windows when downloading files from the internet

echo "Starting housekeep: Removing :Zone.Identifier files..."

# Find and remove all files ending with :Zone.Identifier in the current directory and subdirectories
find . -type f -name "*:Zone.Identifier" -delete

echo "Housekeep completed: All :Zone.Identifier files have been removed."