HTPressableButton
==============
HTPressableButton is designed for iOS developers to be able to focus more on other tasks instead of making a pretty button. It has a Flat UI design and is very easy to integrate.


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

The second header file is not needed if you do not wish to use the Flat UI colors provided, but only use the default UIColors given by Apple.

Components
-------------------
###Rectangle Button
```objective-c
    HTPressableButton *rectButton = [HTPressableButton buttonWithType:UIButtonTypeCustom];
    rectButton.frame = CGRectMake(30, 150, 260, 50);
    rectButton.buttonColor = [UIColor grapeFruitColor];
    rectButton.shadowColor = [UIColor grapeFruitDarkColor];
    rectButton.style = rect;
    [rectButton setTitle:@"Rect" forState:UIControlStateNormal];
    [self.view addSubview:rectButton];
```

![HTPressableButton](https://github.com/herinkc/HTPressableButton/READMEImages/RectButtonImage.gif)


###Rounded Rectangle Button
```objective-c
    HTPressableButton *roundedRectButton = [HTPressableButton buttonWithType:UIButtonTypeCustom];
    roundedRectButton.frame = CGRectMake(30, 230, 260, 50);
    roundedRectButton.style = rounded;
    [roundedRectButton setTitle:@"Rounded" forState:UIControlStateNormal];
    [self.view addSubview:roundedRectButton];
```

![HTPressableButton](https://github.com/herinkc/HTPressableButton/READMEImages/RoundedRectButtonImage.gif)


###Circle Button
```objective-c
    HTPressableButton *circleButton = [HTPressableButton buttonWithType:UIButtonTypeCustom];
    circleButton.frame = CGRectMake(110, 300, 100, 100);
    circleButton.style = circle;
    circleButton.buttonColor = [UIColor mintColor];
    circleButton.shadowColor = [UIColor mintDarkColor];
    [circleButton setTitle:@"Circle" forState:UIControlStateNormal];
    [self.view addSubview:circleButton];
```

![HTPressableButton](https://github.com/herinkc/HTPressableButton/READMEImages/CircleButtonImage.gif)


**NOTE:** If you do not choose *button.style*, the default will be a rectangle button.


License
-------------------
This projected is licensed under the terms of the [MIT license](https://github.com/herinkc/HTPressableButton/blob/master/LICENSE).