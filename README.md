# Mail Notifr (Formerly Gmail Notifr) #

A Gmail Notifier for Mac OS X

![screenshot](screenshot.png)

[Gmail Notifr](http://bit.ly/gmail-notifr-store) features:

* Support multiple accounts.
* Separate check and notification setting for each account.
* Preferred browser setting for each account.
* Support Google hosted account.
* Check mail at a specified interval.
* ~~Growl~~ Notification Center &amp; sound notifications.
* Small &amp; fast.
* ~~Sparkle automatic updates.~~ (removed in 0.9.0)
* No background daemon processes installed as Google's official notifier.
* Open Source!
* 0.9.0 and below are free, avaiable on [ashchan.com/projects/gmail-notifr](http://ashchan.com/projects/gmail-notifr)!
* 1.0 and above are available on [Mac App Store](http://bit.ly/gmail-notifr-store).


## Requirements ##

* Mac OS X 10.7 (Lion) or higher
* An Intel 64-bit machine

## Note ##

Gmail Notifr was originally written in RubyCocoa, then MacRuby, and recently Objective-C.

* The [MacRuby implementation](https://github.com/ashchan/gmail-notifr) repository remains. I also created a [macruby](https://github.com/ashchan/gmail-notifr-objc/tree/macruby) branch.

* The RubyCocoa implementation's on the [rubycocoa](https://github.com/ashchan/gmail-notifr-objc/tree/rubycocoa) branch.


## How to Build ##

[CocoaPods](http://cocoapods.org) is required.

    git clone https://github.com/ashchan/gmail-notifr-objc.git
    cd gmail-notifr-objc
    pod install

Then open `Mail Notifr.xcworkspace`, build and run with Xcode.

## Updates, Changelog &amp; Feedback ##

Feedback is welcome! Leave a message on the [feedback](http://blog.ashchan.com/archive/2008/10/29/gmail-notifr-changelog/) page, or create a github [issue](https://github.com/ashchan/gmail-notifr-objc/issues), or tweet the author [@ashchan](https://twitter.com/ashchan).

View the full [release notes](http://assets.ashchan.com/gmailnotifr/release_notes.html).

Visit [project home page](http://ashchan.com/projects/gmail-notifr) for more information.


## License ##

[The MIT License](http://jameschen.mit-license.org/license.html)

**Binary or modification is NOT allowed to submit to Apple App Store without written permission!**

Copyright (c) 2008 - 2014 [James Chen](http://ashchan.com/) ([@ashchan](https://twitter.com/ashchan))
