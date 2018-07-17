homebrew-unityversions
======================

[![Build Status](https://travis-ci.org/wooga/homebrew-unityversions.svg?branch=master)](https://travis-ci.org/wooga/homebrew-unityversions)
Experimental Unity version Brew Cask 

Usage
-----

To install unity versions from this cask simply tap this repository

```bash
brew tap FluffyFairyGames/homebrew-unityversions
```

To update the avaiable unity versions from this cask simply use

```bash
brew update
```

Now you can install any version hosted as cask with

```bash
brew cask install unity@2017.3.1p1
```

-or-

```bash
brew cask install unity-android-support-for-editor@2017.3.1p1
```

Unity will be install under `/Applications/Unity-$VERSION`. You can install multiple versions at the same time. All support packages will be installed in the parent Unity directory. Means:

`unity-android-support-for-editor@2017.3.1p1` --> `/Applications/Unity-2017.3.1p1/PlaybackEngines/`

If you have a unity version installed under `/Applications/Unity/` it will be moved to
`/Applications/Unity.temp` for the time of the installation.

Unity Versions available
------------------------

| Version    |
| ---------: |
| 2018.2.0f2 |
| 2017.4.0f1 |
| 2017.3.1p4 |
| 2017.3.1p3 |
| 2017.3.1p2 |
| 2017.3.1p1 |
| 2017.3.1f1 |
| 2017.3.0f3 |
| 2017.2.1f1 |
| 2017.2.0f3 |
| 2017.1.2f1 |
| 2017.1.1f1 |
| 2017.1.0f3 |
| 2017.1.0b7 |
| 5.6.2f1    |
| 5.6.1f1    |
| 5.6.1p1    |
| 5.6.0p2    |
| 5.6.0f3    |
| 5.5.3p2    |
| 5.5.3f1    |
| 5.5.3f1    |
| 5.5.2f1    |
| 5.5.1f1    |
| 5.5.0f3    |
| 5.4.5p5    |
| 5.4.5f1    |

Adding a new Version
--------------------
To add a new version simply add the version and version hash to the `versions_map` in the [Rake](Rakefile) and execute `rake`
This generates the cask files.

License
-------
[MIT License](LICENSE) Copyright (C) 2017 Wooga
