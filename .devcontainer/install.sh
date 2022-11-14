#!/bin/bash
# place code that needs to run after container creation here.
echo "Enabling pnpm.."
corepack enable
echo "Installing Dependencies.."
pnpm install
echo "Fixing Permissions.."
chown -R node .
chmod -R 755 .
echo "Done"