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
 

#####[Designmodo](http://designmodo.github.io/FlatUI/)  color schemes

1. turquoiseColor = ![turquoiseColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/turquoiseColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy90dXJxdW9pc2VDb2xvci5wbmciLCJleHBpcmVzIjoxMzk5MTM4NzI5fQ%3D%3D--0a94ad600bd7d1c6d1fd755ec0c4cc8f3715ec2a)
2. greenSeaColor = ![greenSeaColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/greenSeaColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy9ncmVlblNlYUNvbG9yLnBuZyIsImV4cGlyZXMiOjEzOTkxMzg1Mzd9--fdb53802d831f25c875aa4b23e1a725378512c9d)
3. emeraldColor = ![emeraldColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/emeraldColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy9lbWVyYWxkQ29sb3IucG5nIiwiZXhwaXJlcyI6MTM5OTEzODUyM30%3D--553df2d5da19bd4b96fbd26c585480226c9d3868)
4. nephritisColor = ![nephritisColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/nephritisColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy9uZXBocml0aXNDb2xvci5wbmciLCJleHBpcmVzIjoxMzk5MTM4NTgwfQ%3D%3D--ee8a491a35b5e37e3a36b9da72ffb2f7f1430015)
5. peterRiverColor = ![peterRiverColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/peterRiverColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy9wZXRlclJpdmVyQ29sb3IucG5nIiwiZXhwaXJlcyI6MTM5OTEzODYwN30%3D--9a824b27b580caeb2a5e9a1db47249f450f0357b)
6. belizeHoleColor = ![belizeHoleColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/belizeHole.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy9iZWxpemVIb2xlLnBuZyIsImV4cGlyZXMiOjEzOTkxMzg0MzV9--467f0127ee144457026cdddad570a2796269fdaf)
7. amethystColor = ![amethystColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/amethystColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy9hbWV0aHlzdENvbG9yLnBuZyIsImV4cGlyZXMiOjEzOTkxMzgzNTZ9--3236df0ef1a67d4f1f4671ced291695d51049324)
8. wisteriaColor = ![wisteriaColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/wisteriaColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy93aXN0ZXJpYUNvbG9yLnBuZyIsImV4cGlyZXMiOjEzOTkxMzg3Nzd9--05bc726511260646389c9d23a9b87f349b30c717)
9. wetAsphaltColor = ![wetAsphaltColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/wetAsphaltColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy93ZXRBc3BoYWx0Q29sb3IucG5nIiwiZXhwaXJlcyI6MTM5OTEzODc0OH0%3D--52c8dd741a7b3ecd0b8e5c92e4165462d94ec41a)
10. midnightBlueColor = ![midnightBlueColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/midnightBlueColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy9taWRuaWdodEJsdWVDb2xvci5wbmciLCJleHBpcmVzIjoxMzk5MTM4NTU2fQ%3D%3D--3e97a3e5a15da985a6f37fbf8fe65957ca71a77f)
11. sunflowerColor = ![sunflowerColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/sunflowerColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy9zdW5mbG93ZXJDb2xvci5wbmciLCJleHBpcmVzIjoxMzk5MTM4NzA3fQ%3D%3D--cf56c63b9b341af73803b916a7aa475d6b8393b3)
12. citrusColor = ![citrusColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/citrusColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy9jaXRydXNDb2xvci5wbmciLCJleHBpcmVzIjoxMzk5MTM4NDcyfQ%3D%3D--744b71cea047df54a84298cf9a69e782ca637a69)
13. carrotColor = ![carrotColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/carrotColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy9jYXJyb3RDb2xvci5wbmciLCJleHBpcmVzIjoxMzk5MTM4NDU5fQ%3D%3D--5e94f8efc1fc47cbf6da51d9c7d4a9d962a06144)
14. pumpkinColor = ![pumpkinColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/pumkinColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy9wdW1raW5Db2xvci5wbmciLCJleHBpcmVzIjoxMzk5MTM4NjYzfQ%3D%3D--5fcac1b9c5d85804cb1e6f24f0f20debcdd15534)
15. alizarinColor = ![alizarinColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/alizarinColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy9hbGl6YXJpbkNvbG9yLnBuZyIsImV4cGlyZXMiOjEzOTkxMzc4NDR9--c3ed814ab704e41495bbbf87583f44be117b8a1b)
16. pomegranateColor = ![pomegranateColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/pomegranateColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy9wb21lZ3JhbmF0ZUNvbG9yLnBuZyIsImV4cGlyZXMiOjEzOTkxMzg2NDF9--b02b543394b529e7d5a2ea8e516a85e9fd4b8755)
17. cloudsColor = ![cloudsColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/cloudsColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy9jbG91ZHNDb2xvci5wbmciLCJleHBpcmVzIjoxMzk5MTM4NDkxfQ%3D%3D--dbf768e52df68bef3bb44103420ad5b2f5f77633)
18. silverColor = ![silverColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/silverColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy9zaWx2ZXJDb2xvci5wbmciLCJleHBpcmVzIjoxMzk5MTM4NjkzfQ%3D%3D--81c49030115e40d99fe7b45eb3b7f0f426ab1490)
19. concreteColor = ![concreteColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/concreteColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy9jb25jcmV0ZUNvbG9yLnBuZyIsImV4cGlyZXMiOjEzOTkxMzg1MDh9--f5162a4dadbb61ea8b9341ff99792346ced9a678)
20. asbestosColor = ![asbestosColor](https://raw.githubusercontent.com/herinkc/HTPressableButton/master/READMEImages/colorSamples/asbestosColor.png?token=3966522__eyJzY29wZSI6IlJhd0Jsb2I6aGVyaW5rYy9IVFByZXNzYWJsZUJ1dHRvbi9tYXN0ZXIvUkVBRE1FSW1hZ2VzL2NvbG9yU2FtcGxlcy9hc2Jlc3Rvc0NvbG9yLnBuZyIsImV4cGlyZXMiOjEzOTkxMzgzOTF9--b29de362cf38679062ea81e8cf918004064552b6)

#####Flat color schemes

21. grapeFruitColor = ![]()
22. grapeFruitDarkColor = ![]()
23. bitterSweetColor = ![]()
24. bitterSweetDarkColor = ![]()
25. lemonColor = ![]()
26. lemonDarkColor = ![]()
27. grassColor = ![]()
28. grassDarkColor = ![]()
29. mintColor = ![]()
30. mintDarkColor = ![]()
31. aquaColor = ![]()
32. aquaDarkColor = ![]()
33. blueJeansColor = ![]()
34. blueJeansDarkColor = ![]()
35. lavenderColor = ![]()
36. lavenderDarkColor = ![]()
37. pinkRoseColor = ![]()
38. pinkRoseDarkColor = ![]()
39. ashColor = ![]()
40. ashDarkColor = ![]()
41. mediumColor = ![]()
42. mediumDarkColor = ![]()
43. leadColor = ![]()
44. leadDarkColor = ![]()

#####[Thanakron Tandavas](http://tandavas.com) color scheme

45. jayColor = ![]()
46. jayDarkColor = ![]()


License
-------------------
This projected is licensed under the terms of the [MIT license](https://github.com/herinkc/HTPressableButton/blob/master/LICENSE).