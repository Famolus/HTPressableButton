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
    UIImage *buttonImage;
    
    UIImage *frontImage = [UIImage imageWithColor:color andSize:size andCornerRadius:cornerRadius];
    UIImage *backImage = [UIImage imageWithColor:[UIColor redColor] andSize:size andCornerRadius:cornerRadius];

    CGRect rect = CGRectMake(0, 0, backImage.size.width, backImage.size.height+shadowHeight);
    
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [backImage drawAtPoint:CGPointMake(0, shadowHeight)];
    [frontImage drawAtPoint:CGPointMake(0, 0)];
    buttonImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return buttonImage;
}

+ (UIImage *) circleButtonWithColor: (UIColor *) color
                      andSize: (CGSize) size
              andShadowHeight: (CGFloat) shadowHeight
              andCornerRadius:(CGFloat) cornerRadius
{
    UIImage *buttonImage;
    
    UIImage *frontImage = [UIImage imageWithColor:color andSize:size andCornerRadius:cornerRadius];
    UIImage *backImage = [UIImage imageWithColor:[UIColor redColor] andSize:size andCornerRadius:cornerRadius];
    
    CGRect rect = CGRectMake(0, 0, backImage.size.width+shadowHeight+shadowHeight/2, backImage.size.height+shadowHeight+shadowHeight/2);
    
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [backImage drawAtPoint:CGPointMake(shadowHeight/2+2.5, shadowHeight)];
    [frontImage drawAtPoint:CGPointMake(shadowHeight/2+2.5, shadowHeight/4)];
    buttonImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return buttonImage;
}


+ (UIImage *) buttonWithHighlightedColor: (UIColor *) color
                                 andSize: (CGSize) size
                         andShadowHeight: (CGFloat) shadowHeight
                         andCornerRadius:(CGFloat) cornerRadius
{
    UIImage *buttonHighlightedImage;
    
    UIImage *frontImage = [UIImage imageWithColor:color andSize:size andCornerRadius:cornerRadius];
    
    CGRect rect = CGRectMake(0, 0, frontImage.size.width, frontImage.size.height+shadowHeight);
    
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [frontImage drawAtPoint:CGPointMake(0, shadowHeight)];
    buttonHighlightedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return buttonHighlightedImage;

}

+ (UIImage *) circleButtonWithHighlightedColor: (UIColor *) color
                                 andSize: (CGSize) size
                         andShadowHeight: (CGFloat) shadowHeight
                         andCornerRadius:(CGFloat) cornerRadius
{
    UIImage *buttonHighlightedImage;
    
    UIImage *frontImage = [UIImage imageWithColor:color andSize:size andCornerRadius:cornerRadius];
    
    CGRect rect = CGRectMake(0, 0, frontImage.size.width+shadowHeight+shadowHeight/2, frontImage.size.height+shadowHeight+shadowHeight/2);
    
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [frontImage drawAtPoint:CGPointMake(shadowHeight/2+2.5, shadowHeight)];
    buttonHighlightedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return buttonHighlightedImage;
    
}


+ (UIImage *) imageWithColor: (UIColor *) color
                     andSize: (CGSize) size
             andCornerRadius: (CGFloat) cornerRadius
{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    //Round the image
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    
    UIGraphicsBeginImageContextWithOptions(imageView.bounds.size, NO, 1.0);
    [[UIBezierPath bezierPathWithRoundedRect:imageView.bounds
                                cornerRadius:cornerRadius] addClip];
    [image drawInRect:imageView.bounds];
    imageView.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return imageView.image;
}

@end
