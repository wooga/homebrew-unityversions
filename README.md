homebrew-unityversions
======================

[![Build Status](https://travis-ci.org/wooga/homebrew-unityversions.svg?branch=master)](https://travis-ci.org/wooga/homebrew-unityversions)
Unity release version Brew Cask 

Usage
-----

To install unity versions form this cask simply tap this repository

```bash
brew tap wooga/unityversions
```

Now you can install any version hosted as cask with

```bash
brew cask install unity@2017.2.0f3
```

-or-

```bash
brew cask install unity-android-support-for-editor@2017.2.0f3
```

Unity will be install under `/Applications/Unity-$VERSION`. You can install multiple versions at the same time. All support packages will be installed in the parent Unity directory. Means:

`unity-android-support-for-editor@2017.2.0f3` --> `/Applications/Unity-2017.2.0f3/PlaybackEngines/`

If you have a unity version installed under `/Applications/Unity/` it will be moved to
`/Applications/Unity.temp` for the time of the installation.

Unity Versions available
------------------------

| Version    |
| ---------: |
|    5.4.5f1 |
|    5.5.0f3 |
|    5.5.1f1 |
|    5.5.2f1 |
|    5.5.3f1 |
|    5.6.0f3 |
|    5.6.1f1 |
|    5.6.2f1 |
|    5.6.3f1 |
| 2017.1.0f3 |
| 2017.1.1f1 |
| 2017.1.2f1 |
| 2017.2.0f3 |


Adding a new Version
--------------------


License
-------
[MIT License](LICENSE) Copyright (C) 2017 Wooga