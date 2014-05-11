//
//  HTPressableButton.h
//  HTPressableButton
//
//  Created by He Rin Kim on 4/14/14.
//  Copyright (c) 2014 He Rin Kim & Thanakron Tandavas. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, HTPressableButtonStyle) {
    HTPressableButtonStyleRect,
    HTPressableButtonStyleRounded,
    HTPressableButtonStyleCircular
};

/**
 The `HTPressableButton` class is designed for iOS developers to be able to spend time developing ideas, not building basic buttons. These stylish and flat-designed buttons can easily be modified and are perfect for almost any project. With no worry over color choice, HTPressableButton also includes beautiful color schemes that perfectly suit with your app.
 
 There are three built-in styles: rectangle, rounded rectangle, and circular.
 
 @warning You *must* specify the frame before choosing a button style
 */

@interface HTPressableButton : UIButton

/**
 The color of the button. Default color is `jayColor`.
 */
@property(nonatomic, strong, readwrite) UIColor *buttonColor UI_APPEARANCE_SELECTOR;

/**
 The color of the shadow. Default color is `darkJayColor`.
 */
@property(nonatomic, strong, readwrite) UIColor *shadowColor UI_APPEARANCE_SELECTOR;

/**
 The shadow height as a CGFloat. Default value is `17% of button's height`.
 */
@property(nonatomic, readwrite) CGFloat shadowHeight UI_APPEARANCE_SELECTOR;

/**
 The corner radius of the button. Default value is `0.0`.
 */
@property(nonatomic, readwrite) CGFloat cornerRadius UI_APPEARANCE_SELECTOR;

/**
 Button style
 
 Choose between: square, rounded, or circular
 @warning Ensure you have set the buttons frame before applying a style
 */
@property(nonatomic, readwrite) HTPressableButtonStyle style;

#pragma mark - Init

/**
 Initializes and returns a newly allocated button object with the specified frame rectangle.
 @param frame The frame rectangle for the view, measured in points.
 */
- (id)initWithFrame:(CGRect)frame;


#pragma mark - Create Button

/**
 Applies the currently set theme to the button
 */
-(void) createButton;

@end
