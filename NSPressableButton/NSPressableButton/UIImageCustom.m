//
//  UIImageCustom.m
//  NSPressableButton
//
//  Created by He Rin Kim on 4/14/14.
//  Copyright (c) 2014 He Rin Kim & Thanakron Tandavas. All rights reserved.
//

#import "UIImageCustom.h"

@implementation UIImage (NSPressableButton)

+ (UIImage *) buttonWithColor: (UIColor *) color
                      andSize: (CGSize) size
              andShadowHeight: (CGFloat) shadowHeight
{
    UIImage *frontImage = [UIImage imageWithColor:color andSize:CGSizeMake(size.width, size.height)];
    UIImage *backImage = [UIImage imageWithColor:[UIColor redColor] andSize:CGSizeMake(size.width, size.height+shadowHeight)];

    UIImage *buttonImage;
    CGRect rect = CGRectMake(0, 0, backImage.size.width, backImage.size.height);
    
    // Begin context
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    
    // draw images
    [backImage drawAtPoint:CGPointMake(0, 0)];
    [frontImage drawAtPoint:CGPointMake(0, 0)];
    
    // grab context
    buttonImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // end context
    UIGraphicsEndImageContext();

    return buttonImage;
}

+ (UIImage *) buttonWithHighlightedColor: (UIColor *) color
                                 andSize: (CGSize) size
                         andShadowHeight: (CGFloat) shadowHeight
{
    UIImage *buttonImage = [UIImage imageWithHighlightedColor:[UIColor cyanColor] andSize:CGSizeMake(size.width, size.height) andShadowHeight:shadowHeight];
    
    CGRect rect = CGRectMake(0, 0, buttonImage.size.width, buttonImage.size.height);
    
    // Begin context
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    
    // draw images
    [buttonImage drawInRect:rect];
    
    // grab context
    UIGraphicsGetImageFromCurrentImageContext();
    
    // end context
    UIGraphicsEndImageContext();
    
    
    return buttonImage;

}

+ (UIImage *) imageWithHighlightedColor: (UIColor *) color
                                andSize: (CGSize) size
                        andShadowHeight: (CGFloat) shadowHeight
{
    CGRect rect = CGRectMake(0, shadowHeight, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    NSLog(@"in UIImage");
    
    return image;
}


+ (UIImage *) imageWithColor: (UIColor *) color andSize: (CGSize) size
{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    NSLog(@"in UIImage");
    
    return image;
}


@end
