-- -*- lua -*-
help(
[[
This module loads YAHS (yet another Hi-C scaffolder) bioinformatics tools for 
automated Hi-C scaffolding. See https://github.com/c-zhou/yahs

```bash
cd /GWSPH/groups/cbi/Apps
mkdir -p yahs && cd yahs

module load git

git clone https://github.com/c-zhou/yahs.git
cd yahs && make

cd ..
mv yahs 1.2a.1
'''

]])

------------------------------------------------------------------------
-- YaHS
------------------------------------------------------------------------
local version = "1.2a.1"
local base = pathJoin("/GWSPH/groups/cbi/Apps/yahs", version)

whatis("Version: 1.2a.1")
whatis("URL: https://github.com/c-zhou/yahs")
whatis("Description: YaHS is a scaffolding tool using Hi-C data.") 

prepend_path("PATH", base)

