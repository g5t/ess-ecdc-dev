# ess-ecdc-dev

Towards a platform-independent development environment to build ECDC software.

## Setup

Install [`pixi`](https://prefix.dev/), clone this repository, then initialize a `pixi shell` in the repository directory.
Run the included setup bash script once to setup and configure Conan.

```cmd
$ git clone https://github.com/g5t/ess-ecdc-dev.git && cd ess-ecdc-git
$ pixi shell
(ess-ecdc-dev) $ bash setup.sh
```

## Use
Activate the `pixi shell` environment, then configure and build ECDC projects as normal.
Special configuration is likely needed for and IDEs, the `pixi`-defined environment variables are likely useful guides for this.


