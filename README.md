This is a toolbox for installing and running SPEC CPU 2017 benchmark on Ubuntu.
It is tested on Ubuntu Bionic (18.04).

Quick Tutorial
==============

Extract source code from the iso file.
```
$ ./extract_spec.sh
```

Install SPEC CPU 2017.  This would take few minutes.
```
$ ./install.sh
```

Run mcf_r workload.
```
$ ./run.sh mcf_r
```


History
=======

This project is motivated by
[spec_cpu_on_ubuntu](https://github.com/sjp38/spec_cpu_on_ubuntu),
which provides a set of scripts to run SPEC CPU 2006 on Ubuntu.

Author
======

Yunjae Lee <lyj7694@gmail.com>
