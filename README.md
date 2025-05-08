# ess-ecdc-dev

Towards a platform-independent development environment to build ECDC software.

## Setup

Install [`pixi`](https://prefix.dev/), clone this repository, then initialize a `pixi shell` in the repository directory.
Run the included setup bash script once to setup and configure Conan.

```shell
$ git clone https://github.com/g5t/ess-ecdc-dev.git && cd ess-ecdc-git
$ pixi shell
(ess-ecdc-dev) $ bash setup.sh
```

## Use
Activate the `pixi shell` environment, then configure and build ECDC projects as normal.
Special configuration is likely needed for and IDEs, the `pixi`-defined environment variables are likely useful guides for this.

Integration with JetBrains IDEs is possible by exporting the shell initialization hook via, e.g., `pixi shell-hook > shell-hook.sh`
then creating a [new toolchain from that script](https://blog.jetbrains.com/clion/2021/09/clion-starts-2021-3-eap/#toolchains_and_environments).


## Warning
If you need to modify this environment, do so only from _within_ the repository folder as `pixi` will reset the environment variable `${CONAN_USER_HOME}` to the result of `$(pwd)` when, e.g., `pixi add {package}` is called.
If you then need to interact with `conan` it will look in the wrong directory for settings and packages.

One possible work around could be, e.g.
```shell
$ cd ${CONAN_USER_HOME} && pixi add {package} && cd ${OLD_PWD}
```


