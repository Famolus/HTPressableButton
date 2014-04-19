//
//  UIFlatColor.m
//  NSPressableButton
//
//  Created by Thanakron Tandavas on 4/16/2557 BE.
//  Copyright (c) 2557 He Rin Kim & Thanakron Tandavas. All rights reserved.
//


// Thanks to http://stackoverflow.com/a/3532264/1031955
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#import "UIFlatColor.h"

@implementation UIColor (NSPressableButton)

+ (UIColor *) turquoiseColor
{
    return UIColorFromRGB(0x1abc9c);
}

+ (UIColor *) greenSeaColor
{
    return UIColorFromRGB(0x16a085);
}

+ (UIColor *) emelaldColor
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

// Originally call orangeColor !!
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

@end
