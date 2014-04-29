HTPressableButton
==============
HTPressableButton is designed for iOS developers to be able to focus more on other tasks instead of prettifying buttons. Our button has a Flat UI design and we guarantee regarding easy and convenient integration.


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

The second line is not needed if you don't want to use the additional colors provided (below).

Components
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

![HTPressableButton](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/RectButtonImage.gif?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL1JlY3RCdXR0b25JbWFnZS5naWYiLCJleHBpcmVzIjoxMzk4OTY0NDg0fQ%3D%3D--f8882a05961b42509cb76cadc33bff716248e584)


###Rounded Rectangular Button
```objective-c
    HTPressableButton *roundedRectButton = [HTPressableButton buttonWithType:UIButtonTypeCustom];
    roundedRectButton.frame = CGRectMake(30, 230, 260, 50);
    roundedRectButton.style = rounded;
    [roundedRectButton setTitle:@"Rounded" forState:UIControlStateNormal];
    [self.view addSubview:roundedRectButton];
```

![HTPressableButton](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/RoundedRectButtonImage.gif?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL1JvdW5kZWRSZWN0QnV0dG9uSW1hZ2UuZ2lmIiwiZXhwaXJlcyI6MTM5ODk2NDYzMn0%3D--4049b9f971c220426b67c8e6b812d6a163a04e8a)


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

![HTPressableButton](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/CircularButtonImage.gif?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL0NpcmN1bGFyQnV0dG9uSW1hZ2UuZ2lmIiwiZXhwaXJlcyI6MTM5OTEzNTMxNH0%3D--048266a4af816d73390644ce8165fc981de6f18c)


**NOTE:** We have set some default values, incase you do not wish to specify some.
```code
	style = rect
	titleLabel.font = Avenir size:18
	shadowHeight = buttonSize *0.17
	buttonColor = jayColor
```

###Additional UIColors
You can freely use the additional colors in file *UIColors+HTColor* anywhere in your project by:
```objective-c
    [UIColor colorNameHere]
```
 


Contributors
--------------
We do welcome contributions, don't hesitate to make a pull request. We also give special credit as below if you help contribute :)

[Thanakron Tandavas](http://tandavas.com)

[He Rin Kim](http://herinkim.com)

Showcase
--------
We would love to see how we became a part of your project. Show your app!


License
-------------------
This projected is licensed under the terms of the [MIT license](https://github.com/herinkc/HTPressableButton/blob/master/LICENSE).


Credits
--------
Inspired by:

[Designmodo](http://designmodo.com/)

[FlatUIKit](https://github.com/Grouper/FlatUIKit)

