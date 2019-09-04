-- -*- lua -*-
help(
[[
This module loads alan. See https://github.com/mpdunne/alan

```bash
cd /GWSPH/groups/cbi/Apps
mkdir -p alan && cd alan

mkdir -p archive && cd archive
wget https://github.com/mpdunne/alan/archive/2.1.1.tar.gz
cd ..

tar xzf archive/2.1.1.tar.gz
mv alan-2.1.1 2.1.1
```
]])

------------------------------------------------------------------------
-- htop
------------------------------------------------------------------------
local version = "2.1.1"
local base = pathJoin("/GWSPH/groups/cbi/Apps/alan", version)

whatis("Version: 2.1.1")
whatis("URL: https://github.com/mpdunne/alan")
whatis("Description: alan - a simple in-terminal alignment viewer.")

prepend_path("PATH", base)

