WatchDial
=========

Apple WatchKit implementation of a small speed dial application.

This is a sample application used for exploring Apple's new WatchKit API. It takes a (hardcoded) list of people and their associated phone number and email addresses and displays them in a list. Tapping on the person brings you to a menu where you can call, text, or email the person. Selecting one of these options opens the appropriate application on the phone.

Because I (clearly) don't yet have an Apple Watch this hasn't been tested on an actual device to ensure the phone, text, and email functionality work.

The most interesting files in this project are the `WatchFun WatchKit Extension/InterfaceController.swift` and `WatchFun WatchKit Extension/DetailController.swift`.

Overall, the WatchKit API is a fun little framework that I hope continues to grow.

![Person list](https://raw.githubusercontent.com/syoutsey/WatchDial/master/images/person_list.png)
![Person detail](https://raw.githubusercontent.com/syoutsey/WatchDial/master/images/person_detail.png)
