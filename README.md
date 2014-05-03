HTPressableButton
==============
HTPressableButton is designed for iOS developers to be able to spend time developing ideas, not building basic buttons. These stylish and flat-designed buttons can easily be modified and are perfect for almost any project. With no worry over color choice, HTPressableButton also includes beautiful color schemes that perfectly suit with your app.


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

`UIColor+HTColor.h` is not needed if you don't intend to use the color scheme provided (below).

<br>

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

<br>

###Rounded Rectangular Button
```objective-c
    HTPressableButton *roundedRectButton = [HTPressableButton buttonWithType:UIButtonTypeCustom];
    roundedRectButton.frame = CGRectMake(30, 230, 260, 50);
    roundedRectButton.style = rounded;
    [roundedRectButton setTitle:@"Rounded" forState:UIControlStateNormal];
    [self.view addSubview:roundedRectButton];
```

![HTPressableButton](https://raw.github.com/herinkc/HTPressableButton/master/READMEImages/RoundedRectButtonImage.gif)

<br>

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


**NOTE:** The default values of the buttons are:

| Attribute             | Values                                           |
| --------------------- |:------------------------------------------------:|
| Button Style          | rounded                                          |
| Font                  | Avenir                                           |
| Font Size             | 18                                               |
| Shadow Height         | buttonSize * 0.17 `//17% of the button height`   |
| Button Color          | jayColor                                         |
| Button Shadow Color   | jayDarkColor                                     |

<br>

###Additional Colors
You can freely use the additional colors in the file *UIColors+HTColor* anywhere in your project by:
```objective-c
    [UIColor colorNameHere]
    
    [UIColor jayColor]
    [UIColor pinkRoseDarkColor]
```
![HTPressableButton](https://raw.github.com/herinkc/HTPressableButton/master/READMEImages/HTPressableButtonColorScheme.png)

<br><br> 

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

