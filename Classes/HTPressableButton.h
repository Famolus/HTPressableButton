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
 The color of the button
 */
@property(nonatomic, strong, readwrite) UIColor *buttonColor UI_APPEARANCE_SELECTOR;

/**
 The color of the shadow
 */
@property(nonatomic, strong, readwrite) UIColor *shadowColor UI_APPEARANCE_SELECTOR;

/**
 The shadow height as a CGFloat
 */
@property(nonatomic, readwrite) CGFloat shadowHeight UI_APPEARANCE_SELECTOR;

/**
 The corner radius of the button
 */
@property(nonatomic, readwrite) CGFloat cornerRadius UI_APPEARANCE_SELECTOR;

/**
 The color of the button when disabled
 */
@property(nonatomic, strong, readwrite) UIColor *disabledButtonColor UI_APPEARANCE_SELECTOR;

/**
 The color of the shadow when disabled
 */
@property(nonatomic, strong, readwrite) UIColor *disabledShadowColor UI_APPEARANCE_SELECTOR;


/**
 Button style
 
 Choose between: square, rounded, or circular
 @warning Ensure you have set the buttons frame before applying a style
 */
@property(nonatomic, readwrite) HTPressableButtonStyle style;

#pragma mark - Init

/**
 Initializes and returns a newly allocated rounded button object with the specified frame rectangle.
 @param frame The frame rectangle for the view, measured in points.
 */
- (instancetype) initWithFrame:(CGRect)frame;

/**
 Initializes and returns a newly allocated button object with the specified frame rectangle.
 @param frame The frame rectangle for the view, measured in points.
 @param style The style of the button; rectangle, rounded rectangle or circle.
 */
- (instancetype) initWithFrame:(CGRect)frame buttonStyle:(HTPressableButtonStyle)style;

#pragma mark - Set Button Style

/**
 Set the button's main color
 @param buttonColor The fill color to be used by the button
 */
- (void) setButtonColor:(UIColor *)buttonColor;

/**
 Set the button's shadow color
 @param shadowColor The fill color to be used by the shadow
 */
- (void) setShadowColor:(UIColor *)shadowColor;

/**
 Set the shadow height
 @param shadowHeight A float value which sets the height of the shadow
 */
- (void) setShadowHeight:(CGFloat)shadowHeight;

/**
 Set the button's color when disabled
 @param disabledButtonColor The fill color to be used by the button
 */
- (void) setDisabledButtonColor:(UIColor *)disabledButtonColor;

/**
 Set the button's shadow color when disabled
 @param disabledShadowColor The fill color to be used by the shadow
 */
- (void) setDisabledShadowColor:(UIColor *)disabledShadowColor;

/**
 Set the button's corner radius
 @param cornerRadius The radius of the corner
 */
- (void) setCornerRadius:(CGFloat)cornerRadius;

/**
 Set the button style
 
 Can be HTPressableButtonStyleRect, HTPressableButtonStyleRounded or 
 HTPressableButtonStyleCircular
 @param style The display style of the button
 */
- (void) setStyle:(HTPressableButtonStyle) style;

#pragma mark - Set Button Default Style

/**
 @deprecated This method has been deprecated. The default button color is now applied during -initWithFrame:
 */
- (void) setDefaultButtonColor DEPRECATED_ATTRIBUTE;

/**
 @deprecated This method has been deprecated. The default shadow color is now applied during -initWithFrame:
 */
- (void) setDefaultShadowColor DEPRECATED_ATTRIBUTE;

/**
 @deprecated This method has been deprecated. Default shadow height is now applied during -initWithFrame:
 */
- (void) setDefaultShadowHeight DEPRECATED_ATTRIBUTE;

#pragma mark - Create Button

/**
 Applies the currently set theme to the button
 */
- (void) createButton;

@end
