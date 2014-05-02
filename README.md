HTPressableButton
==============
HTPressableButton is designed for iOS developers to be able to focus more on other tasks instead of prettifying buttons. Our button has a Flat UI design and we guarantee easy and convenient integration.


Installation
-------------------
HTPressableButton can be installed via [Cocoapods](http://cocoapods.org/)

```ruby
pod 'HTPressableButton'
```

Another option is to use git submodules or just [download it](https://github.com/Grouper/FlatUIKit/archive/master.zip) and include it in your project manually.

**NOTE:** Please be reminded to add the header file when implementing

```objective-c
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"
```

The second line is not needed if you don't intend to use the additional colors provided (below).

Button Types
-------------------
###Rectangular Button
```objective-c
    HTPressableButton *rectButton = [HTPressableButton buttonWithType:UIButtonTypeCustom];
    rectButton.frame = CGRectMake(30, 150, 260, 50);
    rectButton.buttonColor = [UIColor grapeFruitColor];
    rectButton.shadowColor = [UIColor grapeFruitDarkColor];
    rectButton.style = rect;
    [rectButton setTitle:@"Rect" forState:UIControlStateNormal];
    [self.view addSubview:rectButton];
```

![HTPressableButton](https://raw.github.com/herinkc/HTPressableButton/master/READMEImages/RectButtonImage.gif)


###Rounded Rectangular Button
```objective-c
    HTPressableButton *roundedRectButton = [HTPressableButton buttonWithType:UIButtonTypeCustom];
    roundedRectButton.frame = CGRectMake(30, 230, 260, 50);
    roundedRectButton.style = rounded;
    [roundedRectButton setTitle:@"Rounded" forState:UIControlStateNormal];
    [self.view addSubview:roundedRectButton];
```

![HTPressableButton](https://raw.github.com/herinkc/HTPressableButton/master/READMEImages/RoundedRectButtonImage.gif)


###Circular Button
```objective-c
    //Circular mint color button
    HTPressableButton *circularButton = [HTPressableButton buttonWithType:UIButtonTypeCustom];
    circularButton.frame = CGRectMake(110, 300, 100, 100);
    circularButton.style = circular;
    circularButton.buttonColor = [UIColor mintColor];
    circularButton.shadowColor = [UIColor mintDarkColor];
    [circularButton setTitle:@"Circular" forState:UIControlStateNormal];
    [self.view addSubview:circularButton];
```

![HTPressableButton](https://raw.github.com/herinkc/HTPressableButton/master/READMEImages/CircularButtonImage.gif)


**NOTE:** Some default values have been set, incase you do not wish to specify some.
```code
	style = rect
	titleLabel.font = Avenir size:18
	shadowHeight = buttonSize *0.17 //17% of the button height
	buttonColor = jayColor
```

###Additional UIColors
You can freely use the additional colors in the file *UIColors+HTColor* anywhere in your project by:
```objective-c
    [UIColor colorNameHere]
    
    [UIColor jayColor]
    [UIColor pinkRoseDarkColor]
```
![HTPressableButton](https://raw.github.com/herinkc/HTPressableButton/master/READMEImages/HTPressableButtonColorScheme.png)


Contributors
--------------
Welcome contributors! Don't hesitate to make a pull request. We also give special credit as below if you help contribute :)

* [He Rin Kim](http://github.com/herinkc)

* [Thanakron Tandavas](http://github.com/tandavas)

Showcase
--------
We would love to see how we became a part of your project. Show your app!


License
-------------------
This projected is licensed under the terms of the [MIT license](https://github.com/herinkc/HTPressableButton/blob/master/LICENSE).


Credits
--------
Inspired by:

* [Designmodo](http://designmodo.com/)

* [FlatUIKit](https://github.com/Grouper/FlatUIKit)

