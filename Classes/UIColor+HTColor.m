//
//  UIColor+HTColor.m
//  HTPressableButton
//
//  Created by Thanakron Tandavas on 4/16/2557 BE.
//  Copyright (c) 2557 He Rin Kim & Thanakron Tandavas. All rights reserved.
//


// Thanks to http://stackoverflow.com/a/3532264/1031955
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#import "UIColor+HTColor.h"

@implementation UIColor (HTColor)

// FLAT UI colors by Designmodo. Thanks to http://designmodo.github.io/Flat-UI/
#pragma mark - Designmodo color schemes
+ (UIColor *) turquoiseColor
{
    return UIColorFromRGB(0x1abc9c);
}

+ (UIColor *) greenSeaColor
{
    return UIColorFromRGB(0x16a085);
}

+ (UIColor *) emeraldColor
{
    return UIColorFromRGB(0x2ecc71);
}
+ (UIColor *) nephritisColor
{
    return UIColorFromRGB(0x27ae60);
}

+ (UIColor *) peterRiverColor
{
    return UIColorFromRGB(0x3498db);
}

+ (UIColor *) belizeHoleColor
{
    return UIColorFromRGB(0x2980b9);
}

+ (UIColor *) amethystColor
{
    return UIColorFromRGB(0x9b59b6);
}

+ (UIColor *) wisteriaColor
{
    return UIColorFromRGB(0x8e44ad);
}

+ (UIColor *) wetAsphaltColor
{
    return UIColorFromRGB(0x34495e);
}

+ (UIColor *) midnightBlueColor
{
    return UIColorFromRGB(0x2c3e50);
}

+ (UIColor *) sunflowerColor
{
    return UIColorFromRGB(0xf1c40f);
}

// Original name: orangeColor
+ (UIColor *) citrusColor
{
    return UIColorFromRGB(0xf39c12);
}

+ (UIColor *) carrotColor
{
    return UIColorFromRGB(0xe67e22);
}

+ (UIColor *) pumpkinColor
{
    return UIColorFromRGB(0xd35400);
}

+ (UIColor *) alizarinColor
{
    return UIColorFromRGB(0xe74c3c);
}

+ (UIColor *) pomegranateColor
{
    return UIColorFromRGB(0xc0392b);
}

+ (UIColor *) cloudsColor
{
    return UIColorFromRGB(0xecf0f1);
}

+ (UIColor *) silverColor
{
    return UIColorFromRGB(0xbdc3c7);
}

+ (UIColor *) concreteColor
{
    return UIColorFromRGB(0x95a5a6);
}

+ (UIColor *) asbestosColor
{
    return UIColorFromRGB(0x7f8c8d);
}

#pragma mark - Flat color schemes
+ (UIColor *) grapeFruitColor
{
    return UIColorFromRGB(0xed5565);
}

+ (UIColor *) grapeFruitDarkColor
{
    return UIColorFromRGB(0xda4453);
}

+ (UIColor *) bitterSweetColor
{
    return UIColorFromRGB(0xfc6e51);
}

+ (UIColor *) bitterSweetDarkColor
{
    return UIColorFromRGB(0xe9573f);
}

+ (UIColor *) lemonColor
{
    return UIColorFromRGB(0xffce54);
}

+ (UIColor *) lemonDarkColor
{
    return UIColorFromRGB(0xf6bb42);
}

+ (UIColor *) grassColor
{
    return UIColorFromRGB(0xa0d468);
}

+ (UIColor *) grassDarkColor
{
    return UIColorFromRGB(0x8cc152);
}

+ (UIColor *) mintColor
{
    return UIColorFromRGB(0x48cfad);
}

+ (UIColor *) mintDarkColor
{
    return UIColorFromRGB(0x37bc98);
}

+ (UIColor *) aquaColor
{
    return UIColorFromRGB(0x4fc1e9);
}

+ (UIColor *) aquaDarkColor
{
    return UIColorFromRGB(0x3bafda);
}

+ (UIColor *) blueJeansColor
{
    return UIColorFromRGB(0x5d9cec);
}

+ (UIColor *) blueJeansDarkColor
{
    return UIColorFromRGB(0x4a89dc);
}

+ (UIColor *) lavenderColor
{
    return UIColorFromRGB(0xac92ec);
}

+ (UIColor *) lavenderDarkColor
{
    return UIColorFromRGB(0x967adc);
}

+ (UIColor *) pinkRoseColor
{
    return UIColorFromRGB(0xec87c0);
}

+ (UIColor *) pinkRoseDarkColor
{
    return UIColorFromRGB(0xd770ad);
}

+ (UIColor *) ashColor
{
    return UIColorFromRGB(0xf5f7fa);
}

+ (UIColor *) ashDarkColor
{
    return UIColorFromRGB(0xe6e9ed);
}

+ (UIColor *) mediumColor
{
    return UIColorFromRGB(0xccd1d9);
}

+ (UIColor *) mediumDarkColor
{
    return UIColorFromRGB(0xaab2bd);
}

+ (UIColor *) leadColor
{
    return UIColorFromRGB(0x656d78);
}

+ (UIColor *) leadDarkColor
{
    return UIColorFromRGB(0x434a54);
}

#pragma mark - Tandavas color schemes
+ (UIColor *) jayColor
{
    return UIColorFromRGB(0x00d2ff);
}

+ (UIColor *) jayDarkColor
{
    return UIColorFromRGB(0x00b0d6);
}

@end
