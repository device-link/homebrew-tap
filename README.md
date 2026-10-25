# DeviceLink Homebrew tap

```sh
brew tap device-link/tap
brew install dlink
```

Then start the agent in a folder you want to share:

```sh
dlink
```

Upgrade with `brew upgrade dlink`, remove with `brew uninstall dlink`.

The formula installs [`@devicelink/dlink`](https://www.npmjs.com/package/@devicelink/dlink)
from npm against Homebrew's own Node, so it does not vendor a Node runtime the way
the `install.sh` installer does.

DeviceLink is proprietary software; see the LICENSE inside the package.
