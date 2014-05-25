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
 
 There are three main color styles included: [Designmodo Flat-UI](http://designmodo.github.io/Flat-UI/) style, [Erigon](https://dribbble.com/erigon) style and [Tandavas](https://github.com/tandavas) style.
 */

@interface UIColor (HTColor)

#pragma mark - Designmodo color schemes
+ (UIColor *) ht_turquoiseColor;
+ (UIColor *) ht_greenSeaColor;
+ (UIColor *) ht_emeraldColor;
+ (UIColor *) ht_nephritisColor;
+ (UIColor *) ht_peterRiverColor;
+ (UIColor *) ht_belizeHoleColor;
+ (UIColor *) ht_amethystColor;
+ (UIColor *) ht_wisteriaColor;
+ (UIColor *) ht_wetAsphaltColor;
+ (UIColor *) ht_midnightBlueColor;
+ (UIColor *) ht_sunflowerColor;
+ (UIColor *) ht_citrusColor;
+ (UIColor *) ht_carrotColor;
+ (UIColor *) ht_pumpkinColor;
+ (UIColor *) ht_alizarinColor;
+ (UIColor *) ht_pomegranateColor;
+ (UIColor *) ht_cloudsColor;
+ (UIColor *) ht_silverColor;
+ (UIColor *) ht_concreteColor;
+ (UIColor *) ht_asbestosColor;

#pragma mark - Erigon color schemes
+ (UIColor *) ht_grapeFruitColor;
+ (UIColor *) ht_grapeFruitDarkColor;
+ (UIColor *) ht_bitterSweetColor;
+ (UIColor *) ht_bitterSweetDarkColor;
+ (UIColor *) ht_lemonColor;
+ (UIColor *) ht_lemonDarkColor;
+ (UIColor *) ht_grassColor;
+ (UIColor *) ht_grassDarkColor;
+ (UIColor *) ht_mintColor;
+ (UIColor *) ht_mintDarkColor;
+ (UIColor *) ht_aquaColor;
+ (UIColor *) ht_aquaDarkColor;
+ (UIColor *) ht_blueJeansColor;
+ (UIColor *) ht_blueJeansDarkColor;
+ (UIColor *) ht_lavenderColor;
+ (UIColor *) ht_lavenderDarkColor;
+ (UIColor *) ht_pinkRoseColor;
+ (UIColor *) ht_pinkRoseDarkColor;
+ (UIColor *) ht_ashColor;
+ (UIColor *) ht_ashDarkColor;
+ (UIColor *) ht_mediumColor;
+ (UIColor *) ht_mediumDarkColor;
+ (UIColor *) ht_leadColor;
+ (UIColor *) ht_leadDarkColor;

#pragma mark - Tandavas color schemes
+ (UIColor *) ht_jayColor;
+ (UIColor *) ht_jayDarkColor;

@end
