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
brew cask install unity@2018.3.7f1
```

-or-

```bash
brew cask install unity-android-support-for-editor@2018.3.7f1
```

Unity will be install under `/Applications/Unity-$VERSION`. You can install multiple versions at the same time. All support packages will be installed in the parent Unity directory. Means:

`unity-android-support-for-editor@2018.3.7f1` --> `/Applications/Unity-2018.3.7f1/PlaybackEngines/`

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
|    5.5.4f1 |
|    5.5.5f1 |
|    5.6.0f3 |
|    5.6.1f1 |
|    5.6.2f1 |
|    5.6.3f1 |
|    5.6.4f1 |
| 2017.1.0f1 |
| 2017.1.0f2 |
| 2017.1.0f3 |
| 2017.1.1f1 |
| 2017.1.2f1 |
| 2017.1.3f1 |
| 2017.1.4f1 |
| 2017.1.5f1 |
| 2017.2.0f1 |
| 2017.2.0f2 |
| 2017.2.0f3 |
| 2017.2.1f1 |
| 2017.2.2f1 |
| 2017.2.3f1 |
| 2017.2.4f1 |
| 2017.3.0f1 |
| 2017.3.0f2 |
| 2017.3.0f3 |
| 2017.3.1f1 |
| 2017.4.0f1 |
| 2017.4.10f1 |
| 2017.4.11f1 |
| 2017.4.12f1 |
| 2017.4.1f1 |
| 2017.4.2f2 |
| 2017.4.3f1 |
| 2017.4.4f1 |
| 2017.4.5f1 |
| 2017.4.6f1 |
| 2017.4.7f1 |
| 2017.4.8f1 |
| 2017.4.9f1 |
| 2018.1.0f1 |
| 2018.1.0f2 |
| 2018.1.1f1 |
| 2018.1.2f1 |
| 2018.1.3f1 |
| 2018.1.4f1 |
| 2018.1.5f1 |
| 2018.1.6f1 |
| 2018.1.7f1 |
| 2018.1.8f1 |
| 2018.1.9f1 |
| 2018.1.9f2 |
| 2018.2.0f1 |
| 2018.2.0f2 |
| 2018.2.10f1 |
| 2018.2.11f1 |
| 2018.2.1f1 |
| 2018.2.2f1 |
| 2018.2.3f1 |
| 2018.2.4f1 |
| 2018.2.5f1 |
| 2018.2.6f1 |
| 2018.2.7f1 |
| 2018.2.8f1 |
| 2018.2.9f1 |
| 2017.4.13f1 |
| 2018.2.12f1 |
| 2018.2.13f1 |
| 2017.4.14f1 |
| 2018.2.14f1 |
| 2018.2.15f1 |
| 2017.4.15f1 |
| 2018.2.16f1 |
| 2018.2.17f1 |
| 2017.4.16f1 |
| 2018.2.18f1 |
| 2017.2.5f1 |
| 2017.4.17f1 |
| 2018.2.19f1 |
| 2018.3.0f2 |
| 2018.2.20f1 |
| 2017.4.18f1 |
| 2018.3.1f1 |
| 2018.3.2f1 |
| 2018.3.3f1 |
| 2017.4.19f1 |
| 2018.3.4f1 |
| 2017.4.20f1 |
| 2018.3.5f1 |
| 2017.4.20f2 |
| 2018.3.6f1 |
| 2017.4.21f1 |
| 2017.4.22f1 |
| 2018.2.21f1 |
| 2018.3.7f1 |


Adding a new Version
--------------------


License
-------
[MIT License](LICENSE) Copyright (C) 2017 Wooga