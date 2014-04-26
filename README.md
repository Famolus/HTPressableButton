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


**NOTE:** We have set some default values, incase you do not wish to specify some attributes
```code
	style = rect
	shadowHeight = buttonSize *0.17
	titleLabel.font = Avenir size:18
```

###Additional UIColors
You can freely use the additional colors in file *UIColors+HTColor* anywhere you wish by:
```objective-c
    [UIColor colorNameHere]
```
 

#####[Designmodo's color schemes](http://designmodo.github.io/FlatUI/)

1. turquoiseColor = 
2. greenSeaColor =
3. emeraldColor = 
4. nephritisColor = 
5. peterRiverColor = 
6. belizeHoleColor = 
7. amethystColor = 
8. wisteriaColor = 
9. wetAsphaltColor = 
10. midnightBlueColor = 
11. sunflowerColor = 
12. citrusColor = 
13. carrotColor = 
14. pumpkinColor = 
15. alizarinColor = 
16. pomegranateColor = 
17. cloudsColor = 
18. silverColor = 
19. concreteColor = 
20. asbestosColor = 

#####Flat color schemes

21. grapeFruitColor = 
22. grapeFruitDarkColor = 
23. bitterSweetColor = 
24. bitterSweetDarkColor = 
25. lemonColor = 
26. lemonDarkColor = 
27. grassColor = 
28. grassDarkColor = 
29. mintColor = 
30. mintDarkColor = 
31. aquaColor = 
32. aquaDarkColor = 
33. blueJeansColor = 
34. blueJeansDarkColor = 
35. lavenderColor = 
36. lavenderDarkColor = 
37. pinkRoseColor = 
38. pinkRoseDarkColor = 
39. ashColor = 
40. ashDarkColor = 
41. mediumColor = 
42. mediumDarkColor = 
43. leadColor = 
44. leadDarkColor = 

#####[Thanakron Tandavas](http://tandavas.com) color scheme

45. jayColor = 
46. jayDarkColor = 


License
-------------------
This projected is licensed under the terms of the [MIT license](https://github.com/herinkc/HTPressableButton/blob/master/LICENSE).