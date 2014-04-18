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
              andCornerRadius:(CGFloat) cornerRadius
{
    UIImage *frontImage = [UIImage imageWithColor:color andSize:CGSizeMake(size.width, size.height)];
    UIImage *frontImage2 = [UIImage imageWithRoundedCorners:cornerRadius usingImage:frontImage];
    
    UIImage *backImage = [UIImage imageWithColor:[UIColor redColor] andSize:CGSizeMake(size.width, size.height+shadowHeight)];
    UIImage *backImage2 = [UIImage imageWithRoundedCorners:cornerRadius usingImage:backImage];

    
    UIImage *buttonImage;
    CGRect rect = CGRectMake(0, 0, backImage.size.width, backImage.size.height);
    
    // Begin context
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    
    // draw images
    [backImage2 drawAtPoint:CGPointMake(0, 0)];
    [frontImage2 drawAtPoint:CGPointMake(0, 0)];
    
    // grab context
    buttonImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // end context
    UIGraphicsEndImageContext();

    return buttonImage;
}

+ (UIImage *) circleButtonWithColor: (UIColor *) color
                      andSize: (CGSize) size
              andShadowHeight: (CGFloat) shadowHeight
              andCornerRadius:(CGFloat) cornerRadius
{
    UIImage *frontImage = [UIImage imageWithColor:color andSize:CGSizeMake(size.width, size.height)];
    UIImage *frontImage2 = [UIImage imageWithRoundedCorners:cornerRadius usingImage:frontImage];
    
    UIImage *backImage = [UIImage imageWithColor:[UIColor redColor] andSize:CGSizeMake(size.width, size.height+shadowHeight)];
    UIImage *backImage2 = [UIImage imageWithRoundedCorners:cornerRadius usingImage:backImage];
    
    
    UIImage *buttonImage;
    CGRect rect = CGRectMake(0, 0, backImage.size.width+15, backImage.size.height+5);
    
    // Begin context
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    
    // draw images
    [backImage2 drawAtPoint:CGPointMake(7, 3)];
    [frontImage2 drawAtPoint:CGPointMake(7, 2)];
    
    // grab context
    buttonImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // end context
    UIGraphicsEndImageContext();
    
    return buttonImage;
}


+ (UIImage *) buttonWithHighlightedColor: (UIColor *) color
                                 andSize: (CGSize) size
                         andShadowHeight: (CGFloat) shadowHeight
                         andCornerRadius:(CGFloat) cornerRadius
{
    UIImage *frontImage = [UIImage imageWithColor:color andSize:CGSizeMake(size.width, size.height+shadowHeight)];
    UIImage *frontImage2 = [UIImage imageWithRoundedCorners:cornerRadius usingImage:frontImage];
    
    UIImage *backImage = [UIImage imageWithColor:[UIColor clearColor] andSize:CGSizeMake(size.width, size.height+shadowHeight)];
    UIImage *backImage2 = [UIImage imageWithRoundedCorners:cornerRadius usingImage:backImage];
    
    UIImage *buttonHighlightedImage;
    CGRect rect = CGRectMake(0, 0, backImage.size.width, backImage.size.height+shadowHeight);
    
    // Begin context
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    
    // draw images
    [backImage2 drawAtPoint:CGPointMake(0, 0)];
    [frontImage2 drawAtPoint:CGPointMake(0, shadowHeight)];
    
    // grab context
    buttonHighlightedImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // grab context
    UIGraphicsGetImageFromCurrentImageContext();
    
    // end context
    UIGraphicsEndImageContext();
    
    return buttonHighlightedImage;

}

+ (UIImage *) imageWithColor: (UIColor *) color
                     andSize: (CGSize) size
{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage *)imageWithRoundedCorners:(float)cornerRadius
                          usingImage:(UIImage *)original
{
    UIImageView *imageView = [[UIImageView alloc] initWithImage:original];
    
    // Begin a new image that will be the new image with the rounded corners
    // (here with the size of an UIImageView)
    UIGraphicsBeginImageContextWithOptions(imageView.bounds.size, NO, 1.0);
    
    // Add a clip before drawing anything, in the shape of an rounded rect
    [[UIBezierPath bezierPathWithRoundedRect:imageView.bounds
                                cornerRadius:cornerRadius] addClip];
    // Draw your image
    [original drawInRect:imageView.bounds];
    
    // Get the image, here setting the UIImageView image
    imageView.image = UIGraphicsGetImageFromCurrentImageContext();
    
    // Lets forget about that we were drawing
    UIGraphicsEndImageContext();
    
    return imageView.image;
}

@end
