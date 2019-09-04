-- -*- lua -*-
help(
[[
This module loads htop. See https://hisham.hm/htop/

```bash
cd /GWSPH/groups/cbi/Apps
mkdir -p htop && cd htop

mkdir -p archive && cd archive
wget https://hisham.hm/htop/releases/2.2.0/htop-2.2.0.tar.gz
wget https://hisham.hm/htop/releases/2.2.0/htop-2.2.0.tar.gz.asc

# Download the author's PGP key from here: https://hisham.hm/public_key and save as "KEYS"
gpg --import KEYS
gpg --verify htop-2.2.0.tar.gz.asc
cd ..

tar xzf archive/htop-2.2.0.tar.gz
mv htop-2.2.0 2.2.0
cd 2.2.0
./configure --prefix /GWSPH/groups/cbi/Apps/htop/2.2.0
make
make install
```
]])

------------------------------------------------------------------------
-- htop
------------------------------------------------------------------------
local version = "2.2.0"
local base = pathJoin("/GWSPH/groups/cbi/Apps/htop", version)

whatis("Version: 2.2.0")
whatis("URL: https://hisham.hm/htop/")
whatis("Description: htop - an interactive process viewer for Unix.")

prepend_path("PATH", pathJoin(base, 'bin'))

