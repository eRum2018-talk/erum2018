[![codecov](https://codecov.io/gh/eRum2018-talk/erum2018/branch/master/graph/badge.svg)](https://codecov.io/gh/eRum2018-talk/erum2018)
[![Build Status](https://travis-ci.org/eRum2018-talk/erum2018.svg?branch=master)](https://travis-ci.org/eRum2018-talk/erum2018)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/eRum2018-talk/erum2018?branch=master&svg=true)](https://ci.appveyor.com/project/eRum2018-talk/erum2018)
[![Docker](https://img.shields.io/docker/automated/csgillespie/erum2018.svg)](https://hub.docker.com/r/csgillespie/erum2018/builds/)

# Simple R package

A dummy R package to illustrate what is possible with Git hooks

  * Automatic package checking, with source pushed to a R repo
  * Automatic package checking (under Windows), with source pushed to a R repo
  * A docker container created with the new package
  * Code coverage checking
  * Pushbullet notifications
  * Twitter notifications
  * lintr
  
The package can be installed via

```
install.packages("drat")
drat::addRepo("erum2018-talk")
install.packages("erum2018")
```

------------------------------------------------------------------------

Development of this package was supported by [Jumping Rivers](https://www.jumpingrivers.com)
