//
//  UIImageCustom.h
//  NSPressableButton
//
//  Created by He Rin Kim on 4/14/14.
//  Copyright (c) 2014 He Rin Kim & Thanakron Tandavas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (NSPressableButton)

+ (UIImage *) buttonWithColor: (UIColor *) color
                      andSize: (CGSize) size
              andShadowHeight: (CGFloat) shadowHeight;

+ (UIImage *) buttonWithHighlightedColor: (UIColor *) color
                                 andSize: (CGSize) size
                         andShadowHeight: (CGFloat) shadowHeight;

+ (UIImage *) imageWithColor: (UIColor *) color
                     andSize: (CGSize) size;

+ (UIImage *) imageWithHighlightedColor: (UIColor *) color
                                andSize: (CGSize) size
                        andShadowHeight: (CGFloat) shadowHeight;

@end
