# install-unrar

This is my quick and dirty solution to build and install `unrar` on my Debian 9 using [BLFS info](http://www.linuxfromscratch.org/blfs/view/svn/general/unrar.html).

**WARNING:** make sure you do understand what it does. It did a job for me, that's all a care about.

Script requires `build-essential` package and uses `wget`, `grep`, `mktemp` and `nproc`. Make sure you have them all installed.