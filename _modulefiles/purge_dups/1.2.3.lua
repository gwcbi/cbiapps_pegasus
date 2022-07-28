-- -*- lua -*-
help(
[[
This module loads purge_dups. See https://github.com/dfguan/purge_dups 

```bash
cd /GWSPH/groups/cbi/Apps
mkdir -p purge_dups && cd purge_dups

module load git

git clone https://github.com/dfguan/purge_dups.git
cd purge_dups/src && make

cd ../..
mv purge_dups 1.2.5
'''

]])

------------------------------------------------------------------------
-- blast+
------------------------------------------------------------------------
local version = "1.2.5"
local base = pathJoin("/GWSPH/groups/cbi/Apps/purge_dups", version, "/bin")

whatis("Version: 1.2.5")
whatis("URL: https://github.com/dfguan/purge_dups.git")
whatis("Description: purge_dups - software for purging haplotigs and overlaping in an assembly based on read dept") 

prepend_path("PATH", base)

