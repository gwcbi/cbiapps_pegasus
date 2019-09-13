-- -*- lua -*-
help(
[[
This module loads nanopolish. See https://github.com/jts/nanopolish

```bash
cd /GWSPH/groups/cbi/Apps
mkdir -p nanopolish && cd nanopolish

module load git

git clone --recursive https://github.com/jts/nanopolish.git
cd nanopolish
make
cd ..
mv nanopolish 0.11.1
'''

]])

------------------------------------------------------------------------
-- blast+
------------------------------------------------------------------------
local version = "0.11.1"
local base = pathJoin("/GWSPH/groups/cbi/Apps/nanopolish", version)

whatis("Version: 0.11.1")
whatis("URL: https://github.com/jts/nanopolish")
whatis("Description: nanopolish - Software package for signal-level analysis of Oxford Nanopore sequencing data.")

prepend_path("PATH", base)

