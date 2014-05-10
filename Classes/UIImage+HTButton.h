//
//  UIImage+HTButton.h
//  HTPressableButton
//
//  Created by He Rin Kim on 4/14/14.
//  Copyright (c) 2014 He Rin Kim & Thanakron Tandavas. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 A category on `UIImage` which provides helpers for generating images to be used as button backgrounds.
 */

@interface UIImage (HTButton)

/**
 Create a composite image to be used as a button background
 @param buttonColor The background color of the button
 @param size The button size
 @param shadowHeight the height of the shadow
 @param shadowColor The background color of the shadow
 @param cornerRadius The corner radius of the button
 */
+ (UIImage *) buttonWithColor: (UIColor *) buttonColor
                      andSize: (CGSize) size
              andShadowHeight: (CGFloat) shadowHeight
               andShadowColor: (UIColor *) shadowColor
              andCornerRadius: (CGFloat) cornerRadius;

/**
 Create a composite image to be used as the highlighted state of a button
 @param buttonColor The background color of the button
 @param size The button size
 @param shadowHeight the height of the shadow
 @param shadowColor The background color of the shadow
 @param cornerRadius The corner radius of the button
 */
+ (UIImage *) buttonWithHighlightedColor: (UIColor *) buttonColor
                                 andSize: (CGSize) size
                         andShadowHeight: (CGFloat) shadowHeight
                          andShadowColor: (UIColor *) shadowColor
                         andCornerRadius: (CGFloat) cornerRadius;

/**
 Create a composite circular image to be used as the button background
 @param buttonColor The background color of the button
 @param size The button size
 @param shadowHeight the height of the shadow
 @param shadowColor The background color of the shadow
 @param cornerRadius The corner radius of the button
 */
+ (UIImage *) circularButtonWithColor: (UIColor *) buttonColor
                            andSize: (CGSize) size
                    andShadowHeight: (CGFloat) shadowHeight
                     andShadowColor: (UIColor *) shadowColor
                    andCornerRadius: (CGFloat) cornerRadius;

/**
 Create a composite circular image to be used as the highlighted state of a button
 @param buttonColor The background color of the button
 @param size The button size
 @param shadowHeight the height of the shadow
 @param shadowColor The background color of the shadow
 @param cornerRadius The corner radius of the button
 */
+ (UIImage *) circularButtonWithHighlightedColor: (UIColor *) buttonColor
                                       andSize: (CGSize) size
                               andShadowHeight: (CGFloat) shadowHeight
                                andShadowColor: (UIColor *) shadowColor
                               andCornerRadius:(CGFloat) cornerRadius;

/**
 Create a new image filled with a color
 @param color The fill color of the image
 @param size The size of the image
 @param cornerRadius The corner radius of the image
 */
+ (UIImage *) imageWithColor: (UIColor *) color
                     andSize: (CGSize) size
             andCornerRadius: (CGFloat) cornerRadius;

@end
