//
//  UIColor+HTColor.h
//  HTPressableButton
//
//  Created by Thanakron Tandavas on 4/16/2557 BE.
//  Copyright (c) 2557 He Rin Kim & Thanakron Tandavas. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 A category on `UIColor` which expands the default `UIColor` with modern flat pastel colors.
 
 There are three main color styles included: [Designmodo Flat-UI](http://designmodo.github.io/Flat-UI/) style, general flat style and [tandavas](https://github.com/tandavas) style.
 */

@interface UIColor (HTColor)

#pragma mark - Designmodo color schemes
+ (UIColor *) turquoiseColor;
+ (UIColor *) greenSeaColor;
+ (UIColor *) emeraldColor;
+ (UIColor *) nephritisColor;
+ (UIColor *) peterRiverColor;
+ (UIColor *) belizeHoleColor;
+ (UIColor *) amethystColor;
+ (UIColor *) wisteriaColor;
+ (UIColor *) wetAsphaltColor;
+ (UIColor *) midnightBlueColor;
+ (UIColor *) sunflowerColor;
+ (UIColor *) citrusColor;
+ (UIColor *) carrotColor;
+ (UIColor *) pumpkinColor;
+ (UIColor *) alizarinColor;
+ (UIColor *) pomegranateColor;
+ (UIColor *) cloudsColor;
+ (UIColor *) silverColor;
+ (UIColor *) concreteColor;
+ (UIColor *) asbestosColor;

#pragma mark - Flat color schemes
+ (UIColor *) grapeFruitColor;
+ (UIColor *) grapeFruitDarkColor;
+ (UIColor *) bitterSweetColor;
+ (UIColor *) bitterSweetDarkColor;
+ (UIColor *) lemonColor;
+ (UIColor *) lemonDarkColor;
+ (UIColor *) grassColor;
+ (UIColor *) grassDarkColor;
+ (UIColor *) mintColor;
+ (UIColor *) mintDarkColor;
+ (UIColor *) aquaColor;
+ (UIColor *) aquaDarkColor;
+ (UIColor *) blueJeansColor;
+ (UIColor *) blueJeansDarkColor;
+ (UIColor *) lavenderColor;
+ (UIColor *) lavenderDarkColor;
+ (UIColor *) pinkRoseColor;
+ (UIColor *) pinkRoseDarkColor;
+ (UIColor *) ashColor;
+ (UIColor *) ashDarkColor;
+ (UIColor *) mediumColor;
+ (UIColor *) mediumDarkColor;
+ (UIColor *) leadColor;
+ (UIColor *) leadDarkColor;

#pragma mark - Tandavas color schemes
+ (UIColor *) jayColor;
+ (UIColor *) jayDarkColor;

@end
