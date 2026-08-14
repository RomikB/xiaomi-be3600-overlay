#!/bin/sh
set -e

REPO_URL="https://raw.githubusercontent.com/romikb/xiaomi-be3600-overlay/main"

cd /data

echo "==> Downloading and unpacking overlay..."
curl -sSL "$REPO_URL/overlay.tar.gz" | tar -xz

echo "==> Downloading and unpacking scripts..."
curl -sSL "$REPO_URL/scripts.tar.gz" | tar -xz

echo "==> Starting overlay..."
chmod +x /data/overlay/overlay_start.sh
/data/overlay/overlay_start.sh

echo "==> Updating opkg..."
opkg update

echo "==> Installing packages (mc, openssh-sftp-server)..."
opkg install mc openssh-sftp-server

echo "==> Installation finished successfully!"
