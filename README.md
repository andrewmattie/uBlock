[![Build](https://travis-ci.org/gorhill/uBlock.svg?branch=master)](https://travis-ci.org/gorhill/uBlock)
[![Crowdin](https://d322cqt584bo4o.cloudfront.net/ublock/localized.svg)](https://crowdin.com/project/ublock)
[![License](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://github.com/gorhill/uBlock/blob/master/LICENSE.txt)

*** 

<h1 align="center">
<sub>
<img  src="https://raw.githubusercontent.com/gorhill/uBlock/master/doc/img/icon38@2x.png"
      height="38"
      width="38">
</sub>
uBlock Origin
</h1>
<h3>
This is a pre-Alpha project to port uBlock Origin to Safari App Extensions(Safari 12+ & iOS 9+ support)
</h3>
<p align="center">
<sup> <!-- Pronounciation -->
      pronounced <i>you-block origin</i> (<code>/ˈjuːˌblɒk/</code>) — <i>you</i> decide what enters your browser.
</sup>
<br>
<sup> <!-- Languages -->
      <img src="https://raw.githubusercontent.com/gorhill/uBlock/master/doc/img/languageicon-36.png" width="18" height="18">
      <sup>
            English,
            <a href="https://github.com/fang5566/uBlock/blob/master/README.md#ublock-origin">Chinese (中文)</a>,
            <a href="https://github.com/delightbot/uBlock/blob/master/README.md#ublock-origin">Korean (한국어)</a>,
            <a href="https://github.com/ialexsilva/uBlock/blob/master/README.md#ublock-origin">Português (Brasil)</a>
      </sup>
</sup>
<br>
<br>
<sup><a href="https://github.com/gorhill/uBlock/wiki/uBlock-Origin-is-completely-unrelated-to-the-web-site-ublock.org"><b>BEWARE!</b> uBlock Origin is (and has always been) COMPLETELY UNRELATED to the web site <code>ublock.org</code></a>.</sup>
</p>

***

**An efficient blocker add-on for various browsers. Fast, potent, and lean.**

uBlock Origin is **NOT** an "ad blocker": [it is a wide-spectrum blocker](https://github.com/gorhill/uBlock/wiki/Blocking-mode) -- which happens to be able to function as a mere "ad blocker". The default behavior of uBlock Origin when newly installed is to block ads, trackers and malware sites -- through [_EasyList_](https://easylist.github.io/#easylist), [_EasyPrivacy_](https://easylist.github.io/#easyprivacy), [_Peter Lowe’s ad/tracking/malware servers_](https://pgl.yoyo.org/adservers/policy.php), various lists of [malware](http://www.malwaredomainlist.com/) [sites](http://www.malwaredomains.com/), and uBlock Origin's [own filter lists](https://github.com/uBlockOrigin/uAssets/tree/master/filters).

* [Documentation](#documentation)
* [Purpose & General Info](#philosophy)
* [Installation](#installation)
  * [Chromium](#chromium)
  * [Firefox](#firefox--firefox-for-android)
  * [Microsoft Edge](#microsoft-edge)
  - [Safari (macOS)](#safari-macos)
* [Release History](#release-history)
* [Privacy policy](https://github.com/gorhill/uBlock/wiki/Privacy-policy)
* [Wiki](https://github.com/gorhill/uBlock/wiki)

## Documentation
Safari Content Blockers have a filter limit of 50,000. To get around this limitation uBlock Origin uses a seperate content blocker for each filter list. Some filter lists, such as EasyList, will need to be split into multiple lists to fit within Apple's contraints.

To generate a filter list compatable with Safari you can use [abp2blocklist](https://github.com/andrewmattie/abp2blocklist) to take any AdBlock Plus complatible filter list and make it work with Safari Content Blockers.

Visit the [uBlock Origin's wiki](https://github.com/gorhill/uBlock/wiki) for documentation.

For support/questions/help, there is [/r/uBlockOrigin](https://www.reddit.com/r/uBlockOrigin/) on Reddit.

## Philosophy

uBlock Origin (or uBlock₀) is not an *ad blocker*; it's a general-purpose blocker. uBlock Origin blocks ads through its support of the [Adblock Plus filter syntax](https://adblockplus.org/en/filters). uBlock Origin [extends](https://github.com/gorhill/uBlock/wiki/Filter-syntax-extensions) the syntax and is designed to work with custom rules and filters. Furthermore, advanced mode allows uBlock Origin to work in [default-deny mode](https://github.com/gorhill/uBlock/wiki/Dynamic-filtering:-default-deny), which mode will cause [all 3rd-party network requests](https://requestpolicycontinued.github.io/#what-are-cross-site-requests) to be blocked by default, unless allowed by the user.

That said, it's important to note that using a blocker is **NOT** [theft](https://twitter.com/LeaVerou/status/518154828166725632). Don't fall for this creepy idea. The _ultimate_ logical consequence of `blocking = theft` is the criminalisation of the inalienable right to privacy.

Ads, "unintrusive" or not, are just the visible portions of privacy-invading apparatus entering your browser when you visit most sites nowadays. **uBlock Origin's main goal is to help users neutralize such privacy-invading apparatus** — in a way that welcomes those users who don't wish to use more technical, involved means (such as [uMatrix](https://github.com/gorhill/uMatrix)).

_EasyList_, _Peter Lowe's Adservers_, _EasyPrivacy_ and _Malware domains_ are enabled by default when you install uBlock Origin. Many more lists are readily available to block trackers, analytics, and more. Hosts files are also supported.

Once you install uBlock Origin, you may easily un-select any of the pre-selected filter lists if you think uBlock Origin blocks too much. For reference, Adblock Plus installs with only _EasyList_ enabled by default.

## Installation

Feel free to read [about the extension's required permissions](https://github.com/gorhill/uBlock/wiki/Permissions).

#### Chromium

You can install the latest version [manually](https://github.com/gorhill/uBlock/tree/master/dist#install), from the [Chrome Web Store](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm), or from the [Opera add-ons](https://addons.opera.com/extensions/details/ublock/).

There is also a development version in the Chrome Web Store if you want to test uBlock Origin with the latest changes: see [_uBlock Origin dev build_](https://chrome.google.com/webstore/detail/ublock-origin-dev-build/cgbcahbpdhpcegmbfconppldiemgcoii).

It is expected that uBlock Origin is compatible with any Chromium-based browsers.

#### Firefox / Firefox for Android

[Firefox Add-ons web site](https://addons.mozilla.org/addon/ublock-origin/).

There is also a development version if you want to test uBlock Origin with the latest changes: for installation, see [Install / Firefox webext / For beta version](https://github.com/gorhill/uBlock/blob/master/dist/README.md#for-beta-version)

uBlock Origin is compatible with [SeaMonkey](http://www.seamonkey-project.org/), [Pale Moon](https://www.palemoon.org/), and possibly other browsers based on Firefox: for installation, see [Install / Firefox legacy](https://github.com/gorhill/uBlock/blob/master/dist/README.md#firefox-legacy).

uBO mat also be installable as a [Debian package](https://packages.debian.org/stable/source/ublock-origin):

- Firefox 56-: `apt-get install xul-ext-ublock-origin`
- Firefox 55+: `apt-get install webext-ublock-origin`

There is no guarantee the package will be available on your specific platform -- in which case, you will have to install from [Firefox Add-ons web site](https://addons.mozilla.org/addon/ublock-origin/).

#### Microsoft Edge

Developer: [@nikrolls](https://github.com/nikrolls).

Chromium-based Edge: Stable version available in [Microsoft Edge Insider Addons](https://microsoftedge.microsoft.com/insider-addons/detail/odfafepnkmbhccpbejgmiehpchacaeak).

Legacy Edge: Stable version available in [Microsoft Store](https://www.microsoft.com/store/p/app/9nblggh444l4).

Development version available at <https://github.com/nikrolls/uBlock-Edge#edge>.

Note that issues specific to the Edge fork are the responsibility of the current maintainer, I have no control over the code base of the fork.

#### Safari (macOS)

Developer: [@el1t](https://github.com/el1t).

Development version available at <https://github.com/el1t/uBlock-Safari#ublock-originfor-safari>.

Note that issues specific to the Safari fork are the responsibility of the current maintainer, I have no control over the code base of the fork.

#### Note for all browsers

To benefit from uBlock Origin's higher efficiency, it's advised that you don't use other inefficient blockers at the same time (such as AdBlock or Adblock Plus). uBlock Origin will do [as well or better](#blocking) than most popular ad blockers. Other blockers can also prevent uBlock Origin's privacy or anti-blocker features from working properly.

#### Deploying

Below is documentation to assist administrators in deploying uBlock Origin:

- [Deploying uBlock Origin](https://github.com/gorhill/uBlock/wiki/Deploying-uBlock-Origin)
    - Firefox: [Deploying uBlock Origin for Firefox with CCK2 and Group Policy](http://decentsecurity.com/ublock-for-firefox-deployment/) (external)
    - Google Chrome: [Managing Google Chrome with adblocking and security](https://decentsecurity.com/ublock-for-google-chrome-deployment/) (external)

## Release History

See the [releases pages](https://github.com/gorhill/uBlock/releases) for a history of releases and highlights for each release.

## About

[uBlock Origin's manifesto](MANIFESTO.md).

Free. Open source. For users by users. No donations sought.

Without the preset lists of filters, this extension is nothing. So if ever you
really do want to contribute something, think about the people working hard
to maintain the filter lists you are using, which were made available to use by
all for free.

You can contribute by helping translate uBlock Origin [on Crowdin](https://crowdin.net/project/ublock).

## License

[GPLv3](https://github.com/gorhill/uBlock/blob/master/LICENSE.txt).
