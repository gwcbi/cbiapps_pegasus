-- -*- lua -*-
help(
[[
This module loads pairix. Pairix is a tool for indexing and querying 
on a block-compressed text file containing pairs of genomic coordinates.
See https://github.com/4dn-dcic/pairix

```bash
cd /GWSPH/groups/cbi/Apps
mkdir -p pairix && cd pairix

module load git

git clone https://github.com/4dn-dcic/pairix
cd pairix && make

cd ..
mv pairix 0.3.7
'''

]])

------------------------------------------------------------------------
-- pairix
------------------------------------------------------------------------
local version = "0.3.7"
local base = pathJoin("/GWSPH/groups/cbi/Apps/pairix", version, "/bin")
local b2m = pathJoin("/GWSPH/groups/cbi/Apps/pairix", version, "/util/bam2pairs")
local pathprep = pathJoin(base, ":", b2m)

whatis("Version: 0.3.7")
whatis("URL: https://github.com/4dn-dcic/pairix")
whatis("Description: Pairix is a tool for indexing and querying on a block-compressed text file containing pairs of genomic coordinates.") 

prepend_path("PATH", pathprep)

