# CBI Apps

###### Applications that have been installed by CBI members.

---

```
/GWSPH/groups/cbi/Apps
    ├── alan
    │   ├── 2.1.1
    │   └── archive
    ├── blast+
    │   ├── 2.9.0
    │   └── archive
    ├── flexbar
    │   ├── 3.0.3
    │   ├── 3.4.0
    │   └── archive
    ├── _modulefiles
    │   ├── alan
    │   │   └── 2.1.1.lua
    │   ├── blast+
    │   │   └── 2.9.0.lua
    │   └── flexbar
    │       ├── 3.0.3.lua
    │       └── 3.4.0.lua
    └── README.md
```

##### Fig 1. Example directory structure containing 3 programs. There is one version installed for `alan` and `blast+` and two versions for `flexbar`.

---

### Recommended directory structure

When installing an app, we recommend creating a parent directory with the name
of the app and subdirectories for version. Within the parent directory there
may also be a directory called `archive` for storing downloaded packages.

Please ensure that you grant proper read and execute permissions so others
can use the apps you install. App directories (and archive subdirectories)
should have group write permissions so other group members can install
other versions. Version subdirectories may restrict group write permissions
if necessary. If unsure, set `umask 0002`.

### Modulefiles

We recommend creating an accompanying modulefile for each installation. The 
modulefiles may be kept in `/GWSPH/groups/cbi/Apps/_modulefiles`. We
__strongly__ recommend documenting installation instructions in the modulefile
so that others will know exactly how it was installed and so it could
be reinstalled in the future.


In order to use CBI modules, include the following in your `.bashrc`:

```
module use /GWSPH/groups/cbi/Apps/_modulefiles
```

### Version control

We are keeping the modulefiles under version control. If you create a new
module be sure to commit and push your changes.










