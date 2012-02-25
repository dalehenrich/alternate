To install the latest working copy in your image:

```Smalltalk
Metacello new
  project: 'Alternate';
  repository: 'github://dalehenrich/alternate:master';
  load.
```

## Basic directory structure

The Alternate project illusstrates an alternate project organization for the [Sample project][1]. The same packages are involved
but the packages are structured into three separate project groups:

 * core
 * platform
 * tests

```
+-alternate
  +-core/
  | +-metacello.st
  | +-Sample-Core.pkg\
  +-doc/
  +-platform/
  | +-metacello.st
  | +-Sample-Platform.gemstone.pkg\
  | +-Sample-Platform.pharo.pkg\
  | +-Sample-Platform.squeak.pkg\
  +-license.txt
  +-README.md
  +-tests/
  | +-metacello.st
  | +-Sample-Tests.pkg\
```

The **core** directory contains the *core* packages
([*core* README.md file](core/README.md))
, the **platform** directory contains the *platform* packages
([*platform* README.md file](platform/README.md)), and
the **tests** contains the *test* packages
([*tests* README.md file](tests/README.md)).

The **doc** directory contains directories for **examples**, **scripts**, and **tutorials**. 

[1]: https://github.com/dalehenrich/sample