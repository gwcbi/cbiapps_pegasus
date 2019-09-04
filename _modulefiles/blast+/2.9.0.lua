-- -*- lua -*-
help(
[[
This module loads blast+. See https://blast.ncbi.nlm.nih.gov/Blast.cgi?CMD=Web&PAGE_TYPE=BlastDocs&DOC_TYPE=Download

```bash
cd /GWSPH/groups/cbi/Apps
mkdir -p blast+ && cd blast+

mkdir -p archive && cd archive
wget ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.9.0/ncbi-blast-2.9.0+-x64-linux.tar.gz
wget ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.9.0/ncbi-blast-2.9.0+-x64-linux.tar.gz.md5
md5sum -c ncbi-blast-2.9.0+-x64-linux.tar.gz.md5 #file is sound
cd ..

tar xzf archive/ncbi-blast-2.9.0+-x64-linux.tar.gz
mv ncbi-blast-2.9.0+ 2.9.0
'''

]])

------------------------------------------------------------------------
-- blast+
------------------------------------------------------------------------
local version = "2.9.0"
local base = pathJoin("/GWSPH/groups/cbi/Apps/blast+", version)

whatis("Version: 2.9.0")
whatis("URL: https://blast.ncbi.nlm.nih.gov/Blast.cgi?CMD=Web&PAGE_TYPE=BlastDocs&DOC_TYPE=Download")
whatis("Description: blast+ - BLAST")

prepend_path("PATH", pathJoin(base,'bin'))

