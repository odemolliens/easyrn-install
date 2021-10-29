# EASY RN
Deploy quickly the tools needed to work on React Native on macOS!

## Pre requisite

Before you launch this script, you must manually install the followings tools:

- Xcode from the app store **AND** open it to accept the EULA.
- Xcode command line tools: run the command `xcode-select --install` in a terminal.

## How to use

You can execute this script remotely with the following command:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/odemolliens/easyrn-install/master/easyrn.sh)"
```

At the beginning of the script, you will have to choose the node version, between `lts` or `12.19.0` and the process will start to install all tools.

**NOTE**: during the script execution, you might be prompted for your sudo password to install the different tools.

## Tools bundled

This script will ensure that your environment is React Native ready by installing the following tools:

- [android-studio](https://developer.android.com/studio)
- [android-platform-tools](https://developer.android.com/studio/releases/platform-tools)
- [applesimutilsap](https://github.com/wix/AppleSimulatorUtils)
- [brew](http://brew.sh)
- [carthage](https://github.com/Carthage/Carthage)
- [charles](https://www.charlesproxy.com)
- [cocoapods](https://cocoapods.org)
- [google-chrome-canary](https://www.google.com/chrome/canary/)
- [intel-haxm](https://github.com/intel/haxm)
- [nvm](https://github.com/nvm-sh/nvm)
- node lts version via nvm
- [openjdk8](https://openjdk.java.net/projects/jdk8/)
- [reactotron](https://infinite.red/reactotrons)
- [slack](https://slack.com)
- [visual-studio-code](https://code.visualstudio.com)
- [watchman](https://facebook.github.io/watchman/)
- [webstorm](https://www.jetbrains.com/webstorm/)
- [xcpretty](https://github.com/xcpretty/xcpretty)
- [yarn](https://yarnpkg.com)

Also, an SSH keypair will be created at the end of the script of no key is existing.

## Post install

- Go in "System Preferences > Security & Privacy > General" and enable the freshly
installed `intel HAXM` (might be named `Intel Corporations Apps`) 
- Add multiples android SDK platforms (optional).
- Add android emulators (optional).
