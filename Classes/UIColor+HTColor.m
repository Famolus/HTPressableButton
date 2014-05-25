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
+ (UIColor *) ht_turquoiseColor
{
    return UIColorFromRGB(0x1abc9c);
}

+ (UIColor *) ht_greenSeaColor
{
    return UIColorFromRGB(0x16a085);
}

+ (UIColor *) ht_emeraldColor
{
    return UIColorFromRGB(0x2ecc71);
}
+ (UIColor *) ht_nephritisColor
{
    return UIColorFromRGB(0x27ae60);
}

+ (UIColor *) ht_peterRiverColor
{
    return UIColorFromRGB(0x3498db);
}

+ (UIColor *) ht_belizeHoleColor
{
    return UIColorFromRGB(0x2980b9);
}

+ (UIColor *) ht_amethystColor
{
    return UIColorFromRGB(0x9b59b6);
}

+ (UIColor *) ht_wisteriaColor
{
    return UIColorFromRGB(0x8e44ad);
}

+ (UIColor *) ht_wetAsphaltColor
{
    return UIColorFromRGB(0x34495e);
}

+ (UIColor *) ht_midnightBlueColor
{
    return UIColorFromRGB(0x2c3e50);
}

+ (UIColor *) ht_sunflowerColor
{
    return UIColorFromRGB(0xf1c40f);
}

// Original name: orangeColor
+ (UIColor *) ht_citrusColor
{
    return UIColorFromRGB(0xf39c12);
}

+ (UIColor *) ht_carrotColor
{
    return UIColorFromRGB(0xe67e22);
}

+ (UIColor *) ht_pumpkinColor
{
    return UIColorFromRGB(0xd35400);
}

+ (UIColor *) ht_alizarinColor
{
    return UIColorFromRGB(0xe74c3c);
}

+ (UIColor *) ht_pomegranateColor
{
    return UIColorFromRGB(0xc0392b);
}

+ (UIColor *) ht_cloudsColor
{
    return UIColorFromRGB(0xecf0f1);
}

+ (UIColor *) ht_silverColor
{
    return UIColorFromRGB(0xbdc3c7);
}

+ (UIColor *) ht_concreteColor
{
    return UIColorFromRGB(0x95a5a6);
}

+ (UIColor *) ht_asbestosColor
{
    return UIColorFromRGB(0x7f8c8d);
}

#pragma mark - Flat color schemes
+ (UIColor *) ht_grapeFruitColor
{
    return UIColorFromRGB(0xed5565);
}

+ (UIColor *) ht_grapeFruitDarkColor
{
    return UIColorFromRGB(0xda4453);
}

+ (UIColor *) ht_bitterSweetColor
{
    return UIColorFromRGB(0xfc6e51);
}

+ (UIColor *) ht_bitterSweetDarkColor
{
    return UIColorFromRGB(0xe9573f);
}

+ (UIColor *) ht_lemonColor
{
    return UIColorFromRGB(0xffce54);
}

+ (UIColor *) ht_lemonDarkColor
{
    return UIColorFromRGB(0xf6bb42);
}

+ (UIColor *) ht_grassColor
{
    return UIColorFromRGB(0xa0d468);
}

+ (UIColor *) ht_grassDarkColor
{
    return UIColorFromRGB(0x8cc152);
}

+ (UIColor *) ht_mintColor
{
    return UIColorFromRGB(0x48cfad);
}

+ (UIColor *) ht_mintDarkColor
{
    return UIColorFromRGB(0x37bc98);
}

+ (UIColor *) ht_aquaColor
{
    return UIColorFromRGB(0x4fc1e9);
}

+ (UIColor *) ht_aquaDarkColor
{
    return UIColorFromRGB(0x3bafda);
}

+ (UIColor *) ht_blueJeansColor
{
    return UIColorFromRGB(0x5d9cec);
}

+ (UIColor *) ht_blueJeansDarkColor
{
    return UIColorFromRGB(0x4a89dc);
}

+ (UIColor *) ht_lavenderColor
{
    return UIColorFromRGB(0xac92ec);
}

+ (UIColor *) ht_lavenderDarkColor
{
    return UIColorFromRGB(0x967adc);
}

+ (UIColor *) ht_pinkRoseColor
{
    return UIColorFromRGB(0xec87c0);
}

+ (UIColor *) ht_pinkRoseDarkColor
{
    return UIColorFromRGB(0xd770ad);
}

+ (UIColor *) ht_ashColor
{
    return UIColorFromRGB(0xf5f7fa);
}

+ (UIColor *) ht_ashDarkColor
{
    return UIColorFromRGB(0xe6e9ed);
}

+ (UIColor *) ht_mediumColor
{
    return UIColorFromRGB(0xccd1d9);
}

+ (UIColor *) ht_mediumDarkColor
{
    return UIColorFromRGB(0xaab2bd);
}

+ (UIColor *) ht_leadColor
{
    return UIColorFromRGB(0x656d78);
}

+ (UIColor *) ht_leadDarkColor
{
    return UIColorFromRGB(0x434a54);
}

#pragma mark - Tandavas color schemes
+ (UIColor *) ht_jayColor
{
    return UIColorFromRGB(0x00d2ff);
}

+ (UIColor *) ht_jayDarkColor
{
    return UIColorFromRGB(0x00b0d6);
}

@end
