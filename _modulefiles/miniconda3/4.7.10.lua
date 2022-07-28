-- -*- lua -*-
help(
[[
This module loads miniconda. See https://docs.conda.io/en/latest/miniconda.html

NOTE: Since conda uses a complex shell script for initialization, this module simply
executes the conda init scripts. As a result, this module does not unload correctly.
Use caution!

Installation:

```bash
cd /GWSPH/groups/cbi/Apps
mkdir -p miniconda3 && cd miniconda3

### Choose version of miniconda to install and get checksum
### Available versions are listed at https://repo.anaconda.com/miniconda/
### Download installer and check file
mkdir -p archive && cd archive
wget https://repo.anaconda.com/miniconda/Miniconda3-4.7.10-Linux-x86_64.sh && \
  echo '1c945f2b3335c7b2b15130b1b2dc5cf4 Miniconda3-4.7.10-Linux-x86_64.sh' | md5sum -c
cd ..

### The install should be read only for group
umask 0022

### Run installer
### The prefix is /GWSPH/groups/cbi/Apps/miniconda3/4.7.10
bash archive/Miniconda3-4.7.10-Linux-x86_64.sh -b -p /GWSPH/groups/cbi/Apps/miniconda3/4.7.10

### Create .condarc for all users in the conda base directory
### Choose user home as directory for conda environments

cat << EOF > /GWSPH/groups/cbi/Apps/miniconda3/4.7.10/.condarc
# .condarc system configuration file for CBI
# This configuration file overrides any user-level configuration 
# files. User-level configuration should be specified in ~/.condarc
# Contact bendall@gwu.edu for questions

# Allow users to install packages from other channels
allow_other_channels : True

# conda updates itself any time a user updates or installs a package
# in the root environment
auto_update_conda: False

# notify if a newer version of conda is detected during create,
# install, update, or remove operation.
notify_outdated_conda: False

# The list of directories to search for named environments. When
# creating a new named environment, the environment will be placed in
# the first writable location.
envs_dirs:
  - ~/.conda/envs

# The list of directories in which package cache can be present
pkgs_dirs:
  - ~/.conda/pkgs
EOF

### Create an init script for lmod
### This script is called when module is loaded

cat << 'EOF' > /GWSPH/groups/cbi/Apps/miniconda3/4.7.10/init_lmod
#! /bin/bash
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/GWSPH/groups/cbi/Apps/miniconda3/4.7.10/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/GWSPH/groups/cbi/Apps/miniconda3/4.7.10/etc/profile.d/conda.sh" ]; then
        . "/GWSPH/groups/cbi/Apps/miniconda3/4.7.10/etc/profile.d/conda.sh"
    else
        export PATH="/GWSPH/groups/cbi/Apps/miniconda3/4.7.10/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
EOF

### Set permissions for init script
chmod a+x /GWSPH/groups/cbi/Apps/miniconda3/4.7.10/init_lmod

```
]])

------------------------------------------------------------------------
-- miniconda3
------------------------------------------------------------------------
-- Make this module sticky
LmodMessage("Warning: miniconda3 does not unload cleanly. Use with caution :-)")
add_property("lmod", "sticky")

local version = "4.7.10"
local base = pathJoin("/GWSPH/groups/cbi/Apps/miniconda3", version)

whatis("Version: 4.7.10")
whatis("URL: https://docs.conda.io/en/latest/miniconda.html")
whatis("Description: Miniconda - conda package management system.")

local cmd = '. '..pathJoin(base, 'init_lmod')
execute {cmd = cmd, modeA={"load"}}
