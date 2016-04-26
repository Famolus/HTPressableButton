HTPressableButton
==============

[![Build Status](https://travis-ci.org/herinkc/HTPressableButton.svg?branch=master)](https://travis-ci.org/herinkc/HTPressableButton)

HTPressableButton is designed for iOS developers to be able to spend time developing ideas, not building basic buttons. These stylish and flat-designed buttons can easily be modified and are perfect for almost any project. With no worry over color choice, HTPressableButton also includes beautiful color schemes that perfectly suit with your app.

**Compatible with:**  iOS 6.0 and above

**Current Version:** 1.3.3

You can check out our documentation [here](http://cocoadocs.org/docsets/HTPressableButton/1.3.3/). 
Installation
-------------------
HTPressableButton can be installed via [CocoaPods](http://cocoapods.org/)

```ruby
pod 'HTPressableButton'
```

You may also quickly try the HTPressableButton example project with

```ruby
pod try 'HTPressableButton'
```

However, if you are only interested to use the color scheme provided (shown below) then

```ruby
pod 'HTPressableButton/HTColor'
```

Another option is to use git submodules or just [download it](https://github.com/herinkc/HTPressableButton/archive/master.zip) and include it in your project manually.

**NOTE:** Please be reminded to add the header files to your project. You may add only the one that you'll use. 

```objective-c
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"
```

<br>

Button Types
-------------------

**IMPORTANT:** You must specify the *frame* first. We'd like to know the size of your button first.

###Rectangular Button
```objective-c
    //Rectangular grape fruit color button
    CGRect frame = CGRectMake(30, 150, 260, 50);
    HTPressableButton *rectButton = [[HTPressableButton alloc] initWithFrame:frame buttonStyle:HTPressableButtonStyleRect];
    rectButton.buttonColor = [UIColor ht_grapeFruitColor];
    rectButton.shadowColor = [UIColor ht_grapeFruitDarkColor];
    [rectButton setTitle:@"Rect" forState:UIControlStateNormal];
    [self.view addSubview:rectButton];

```

![HTPressableButton](https://raw.github.com/herinkc/HTPressableButton/master/READMEImages/RectButtonImage.gif)

<br>

###Rounded Rectangular Button
```objective-c
    // Rounded rectangular default color button
	frame = CGRectMake(30, 230, 260, 50);
    HTPressableButton *roundedRectButton = [[HTPressableButton alloc] initWithFrame:frame buttonStyle:HTPressableButtonStyleRounded];
    [roundedRectButton setTitle:@"Rounded" forState:UIControlStateNormal];
    [self.view addSubview:roundedRectButton];

```

![HTPressableButton](https://raw.github.com/herinkc/HTPressableButton/master/READMEImages/RoundedRectButtonImage.gif)

<br>

###Circular Button
```objective-c
	//Circular mint color button
    frame = CGRectMake(110, 300, 100, 100);
    HTPressableButton *circularButton = [[HTPressableButton alloc] initWithFrame:frame buttonStyle:HTPressableButtonStyleCircular];
    circularButton.buttonColor = [UIColor ht_mintColor];
    circularButton.shadowColor = [UIColor ht_mintDarkColor];
    [circularButton setDisabledButtonColor:[UIColor ht_sunflowerColor]];
    [circularButton setTitle:@"Circular" forState:UIControlStateNormal];
    [self.view addSubview:circularButton];
```

![HTPressableButton](https://raw.github.com/herinkc/HTPressableButton/master/READMEImages/CircularButtonImage.gif)

<br>

###Disabled Button
If you wish to create a disabled button, add:
```object-c
	buttonNameHere.enabled = NO;
```
Example:
```objective-c
    //Disabled rounded rectangular button
    frame = CGRectMake(30, 420, 260, 50);
    HTPressableButton *disabledRoundedRectButton = [[HTPressableButton alloc] initWithFrame:frame buttonStyle:HTPressableButtonStyleRounded];
    disabledRoundedRectButton.disabledButtonColor = [UIColor ht_pinkRoseColor];
    disabledRoundedRectButton.disabledShadowColor = [UIColor ht_pinkRoseDarkColor];
    disabledRoundedRectButton.alpha = 0.5;
    disabledRoundedRectButton.enabled = NO;
    [disabledRoundedRectButton setTitle:@"DisabledButton" forState:UIControlStateNormal];
    [self.view addSubview:disabledRoundedRectButton];
```

![HTPressableButton](https://raw.github.com/herinkc/HTPressableButton/master/READMEImages/DisabledButtonImage.png)

The default *alpha* value is 1.0 for all type of buttons. The value can be changed (like the above disabled button) by:
```objective-c
	buttonNameHere.alpha = 0.5;
```
<br>

**NOTE:** We have set some *default* properties for you. 

| Property                     | Values                                           |
| ---------------------------- |:------------------------------------------------:|
| Button Type		           | HTPressableButtonStyleRounded	                  |
| Corner Radius                | 10.0                                             |
| Font                         | Avenir                                           |
| Font Size                    | 18                                               |
| Shadow Height                | 17% of the button's height			              |
| Button Color                 | ht_jayColor                                      |
| Button Shadow Color          | ht_jayDarkColor                                  |
| Disabled Button Color        | ht_mediumColor                                   |
| Disabled Button Shadow Color | ht_mediumDarkColor                               |


If you wish to set your own shadow height instead of using our default value, add:

```objective-c	
	//Set shadow height of size 10
	buttonNameHere.shadowHeight = 10;
```

The different types of buttons have different default value set for its corner radius, you can modify it by:

```objective-c  
    //Set corner radius to 20.0
    buttonNameHere.cornerRadius = 20;
```

To change the font of the button:

```objective-c  
    //Set button font
    buttonNameHere.titleFont = [UIFont fontWithName:@"Avenir" size:18];
```


<br>

###Additional Colors
You can freely use the additional colors in the file `UIColors+HTColor` anywhere in your project by:
```objective-c
    [UIColor ht_colorNameHere]
    
    //Examples
    [UIColor ht_jayColor]
    [UIColor ht_pinkRoseColor]
```
![HTPressableButton](https://raw.github.com/herinkc/HTPressableButton/master/READMEImages/HTPressableButtonColorScheme.png)

<br><br>

Contributors
--------------
Welcome contributors! Please don't hesitate to make an issue or pull request :)

####Maintainers
[![He Rin Kim](https://avatars1.githubusercontent.com/u/3966522?s=80)](https://github.com/herinkc)
[![Thanakron Tandavas](https://avatars1.githubusercontent.com/u/3419259?s=80)](https://github.com/tandavas)
<br>
####Contributors
[![Paul Williamson](https://avatars0.githubusercontent.com/u/343450?s=80)](https://github.com/squarefrog)
[![Ben](https://avatars1.githubusercontent.com/u/2032500?s=80)](https://github.com/bcylin)
[![Manoj Mahapatra](https://avatars3.githubusercontent.com/u/2066984?s=80)](https://github.com/indideveloper)
[![Pitiphong Phongpattranont](https://avatars2.githubusercontent.com/u/426153?s=80)](https://github.com/pitiphong-p)
[![Alexsander Akers](https://avatars3.githubusercontent.com/u/241156?s=80)](https://github.com/a2)
[![Naji Dmeiri](https://avatars2.githubusercontent.com/u/8139148?v=3&s=96)](https://github.com/ndmeiri)


Showcase
--------
We would love to see how we became a part of your project. Send us an email, issue, tweet, or etc. and we'll update it here!


License
-------------------
This project is licensed under the terms of the [MIT license](https://github.com/herinkc/HTPressableButton/blob/master/LICENSE).


Credits
--------
Inspired by:

* [Designmodo](http://designmodo.com/)

* [FlatUIKit](https://github.com/Grouper/FlatUIKit)

* [Erigon](https://dribbble.com/erigon)
