-- -*- lua -*-
help(
[[
This module loads predicthaplo. See https://bmda.dmi.unibas.ch/software.html

```bash
# use gcc 4.9.4, add blas and lapack to library path
module load gcc/4.9.4
module load blas/gcc/64
module load lapack/gcc/64

cd /GWSPH/groups/cbi/Apps
mkdir -p predicthaplo && cd predicthaplo

# download source
mkdir -p archive && cd archive
wget https://bmda.dmi.unibas.ch/software/PredictHaplo-Paired-0.4.tgz
cd ..

# unzip source and change directory name
tar xfvz archive/PredictHaplo-Paired-0.4.tgz
mv PredictHaplo-Paired-0.4 0.4
cd 0.4

# install scythestat
tar xfvz scythestat-1.0.3.tar.gz
cd scythestat-1.0.3
./configure --prefix=/GWSPH/groups/cbi/Apps/predicthaplo/0.4/NEWSCYTHE
make install
cd ..

# compile predicthaplo
make
```
]])

------------------------------------------------------------------------
-- htop
------------------------------------------------------------------------
local version = "0.4"
local base = pathJoin("/GWSPH/groups/cbi/Apps/predicthaplo", version)

whatis("Version: 0.4")
whatis("URL: https://bmda.dmi.unibas.ch/software.html")
whatis("Description: predicthaplo - haplotype reconstruction from NGS data.")

prepend_path("PATH", base)
