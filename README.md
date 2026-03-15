# xiaomi-be3600-overlay
Scripts for Xiaomi BE3600 router

## Usage

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
