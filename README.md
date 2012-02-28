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

[1]: https://github.com/dalehenrich/sample
