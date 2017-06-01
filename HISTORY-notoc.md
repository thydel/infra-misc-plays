#include HISTORY-toc.md

# Curated bash history like

And commented too.

# Install apache-status on all fronts

## Fix `/usr/local/bin` (shouldn't be required)

- Adds [fix-usr-local-bin](fix-usr-local-bin.yml) (`hosts` defaults to new fronts)

```bash
fix-usr-local-bin.yml
```
- Some fronts seems to have undergone an unexpected (and plain
  incorrect) `chown -R root.root /usr/local`
- Since we depends on standard `debian` setup of `/usr/local` to be in
  group `staff` we need this quick fix (just take care of `/usr/local/bin`)
- Probably need a broader repair script as the `setgid` bit is on for
  `/usr/local/bin` on `debian`.


## Install some packages (common and basic tools)

- Adds [install-some-pkg](install-some-pkg.yml) (`hosts` defaults to
  new fronts) to wrap installation of some very basic (don't tied to
  specific *play*) in *commit* before and after installation

```bash
install-some-pkg.yml # default to install make
install-some-pkg.yml -e name=git
```

## Adds invoking user to staff group

- Adds [add-me-to-staff](add-me-to-staff.yml) (`hosts` defaults to new
  fronts) to add the runing user to the `staff` *group*

```bash
add-me-to-staff.yml
```

## Install local apache-status tool

- Adds [install-apache-status.yml](install-apache-status.yml) (`hosts`
  defaults to new fronts) to install `apache-status` *Makefile* of
  `misc-script` *repo* as `/usr/local/bin/apache-status` on all
  *fonts*
  
```bash
install-apache-status.yml
```
