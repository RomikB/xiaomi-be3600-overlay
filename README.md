# xiaomi-be3600-overlay
Scripts for Xiaomi BE3600 router

## Quick Install (One-liner)

Run this command on your router:

```bash
curl -sSL https://raw.githubusercontent.com/romikb/xiaomi-be3600-overlay/main/install.sh | sh
```

This will automatically:
1. Download and extract `overlay.tar.gz` and `scripts.tar.gz` into `/data`
2. Start the overlay mounts (`overlay_start.sh`)
3. Update `opkg` and install `mc` and `openssh-sftp-server`

---

## Manual Usage

Change dir to /data:
```bash
cd /data
```

Use curl to download the script:
```bash
curl -O https://raw.githubusercontent.com/romikb/xiaomi-be3600-overlay/main/overlay.tar.gz
```

Unpack:
```bash
tar -xzf overlay.tar.gz
```

Remove archive (optional):
```bash
rm overlay.tar.gz
```

Change dir to /data/overlay:
```bash
cd overlay
```

Start overlay:
```bash
./overlay_start.sh
```

Update opkg:
```bash
opkg update
```

Install package:
```bash
opkg install mc
```

Install additional scripts (optional):
```bash
curl -O https://raw.githubusercontent.com/romikb/xiaomi-be3600-overlay/main/scripts.tar.gz
```

Unpack scripts:
```bash
tar -xzf scripts.tar.gz
```
