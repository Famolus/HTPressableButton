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

@interface HTPressableButton : UIButton

@property(nonatomic, strong, readwrite) UIColor *buttonColor UI_APPEARANCE_SELECTOR;
@property(nonatomic, strong, readwrite) UIColor *shadowColor UI_APPEARANCE_SELECTOR;
@property(nonatomic, readwrite) CGFloat shadowHeight UI_APPEARANCE_SELECTOR;
@property(nonatomic, readwrite) CGFloat cornerRadius UI_APPEARANCE_SELECTOR;

/**
 * Button style
 *
 * @remarks Choose between: square, rounded, or circular
 */
@property(nonatomic, readwrite) HTPressableButtonStyle style;

#pragma mark - Init
- (id)initWithFrame:(CGRect)frame;
+ (instancetype)buttonWithFrame:(CGRect)frame
                          style:(HTPressableButtonStyle)style
                          title:(NSString *)title
                    buttonColor:(UIColor *)color
                 andShadowColor:(UIColor *)shadowColor;

#pragma mark - Set Button Style
-(void) setButtonColor:(UIColor *)buttonColor;
-(void) setShadowColor:(UIColor *)shadowColor;
-(void) setShadowHeight:(CGFloat)shadowHeight;
-(void) setStyle:(HTPressableButtonStyle) style;

#pragma mark - Set Button Default Style
-(void) setDefaultButtonColor;
-(void) setDefaultShadowColor:(UIColor *)buttonColor;
-(void) setDefaultShadowHeight;
-(void) setHighlighted:(BOOL)highlighted;

#pragma mark - Create Button
-(void) createButton;

@end
