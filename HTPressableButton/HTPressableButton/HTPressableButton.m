//
//  NSPressableButton.m
//  NSPressableButton
//
//  Created by He Rin Kim on 4/14/14.
//  Copyright (c) 2014 He Rin Kim & Thanakron Tandavas. All rights reserved.
//

#import "HTPressableButton.h"
#import "UIImageCustom.h"
#import "UIFlatColor.h"

@implementation HTPressableButton

#pragma mark - Init
/**
 * Initialize a button
 *
 * @param frame Position and size of the button
 */
- (id)initWithFrame:(CGRect)frame
{
    NSLog(@"INIT");
    self = [super initWithFrame:frame];
    if (self)
    {
        // Initialization code
    }
    return self;
}

#pragma mark - Set Button Style
/**
 * Set button color
 *
 * @param buttonColor color of the button
 */
-(void) setButtonColor:(UIColor *)buttonColor
{
    NSLog(@"in COLOR");
    _buttonColor = buttonColor;
    [self createButton];
}

/**
 * Set button shadow color
 *
 * @param shadowColor color of the shadow
 */
-(void) setShadowColor:(UIColor *)shadowColor
{
    _shadowColor = shadowColor;
    [self createButton];
}


/**
 * Set the shape of the button
 *
 * @param style UIButtonStyle of the button
 */
-(void) setShadowHeight:(CGFloat)shadowHeight
{
    _shadowHeight = shadowHeight;
    [super setTitleEdgeInsets:UIEdgeInsetsMake(0.0f, 0.0f, shadowHeight, 0.0f)];
    [self createButton];
}

/**
 * Set the shape of the button
 *
 * @param style UIButtonStyle of the button
 */
-(void) setStyle:(UIButtonStyle) style
{
    switch (style) {
        case rect:
            _cornerRadius = 0.0;
            break;
        case rounded:
            _cornerRadius = 10.0;
            break;
        case circle:
            _cornerRadius = self.frame.size.height/2;
            self.clipsToBounds = YES;
            break;

        default:
            _cornerRadius = 0.0;
            break;
    }
    [self createButton];
}

#pragma mark - Set Button Default Style
/**
 * Set default button color
 */
-(void) setDefaultButtonColor
{
    _buttonColor = [UIColor cyanColor];
}

/**
 * Set default shadow color
 *
 * @param shadowColor color of the shadow
 */
-(void) setDefaultShadowColor:(UIColor *)shadowColor
{
    // Need to replace this
    _shadowColor = [UIColor alizarinColor];
}

/**
 * Set default shadow height
 */
-(void) setDefaultShadowHeight
{
    _shadowHeight = self.frame.size.height/(self.frame.size.height/10);
    [super setTitleEdgeInsets:UIEdgeInsetsMake(0.0f, 0.0f, _shadowHeight, 0.0f)];
}

/**
 * Set
 *
 * @param highlighted
 */
-(void) setHighlighted:(BOOL)highlighted
{
    if (highlighted)
    {
        [super setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, -(_shadowHeight/1.5), 0)];
    }
    else
    {
        [super setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, _shadowHeight, 0)];
    }
    [super setHighlighted:highlighted];
}

#pragma mark - Create Button
/**
 * Create button
 */
-(void) createButton
{
    NSLog(@"in NSPRESS");
    
    UIImage *buttonNormal;
    UIImage *buttonHighlighted;
    bool isButtonColorSet = _buttonColor;
    bool isShadowColorSet = _shadowColor;
    bool isShadowHeightSet = _shadowHeight;
    bool isButtonCircle = false;
    
    if(!isButtonColorSet)
    {
        [self setDefaultButtonColor];
        NSLog(@"Set default button color");
    }
    if(!isShadowHeightSet)
    {
        [self setDefaultShadowHeight];
        NSLog(@"Set default button shadow height");
    }
    if(!isShadowColorSet)
    {
        [self setDefaultShadowColor: _buttonColor];
        NSLog(@"Set default button shadow height");
    }
    
    isButtonCircle = (_cornerRadius > 10);
    if (isButtonCircle)
    {
        buttonNormal = [UIImage circleButtonWithColor:_buttonColor
                                              andSize:self.frame.size
                                      andShadowHeight:_shadowHeight
                                       andShadowColor:_shadowColor
                                      andCornerRadius:_cornerRadius];
        
        buttonHighlighted = [UIImage circleButtonWithHighlightedColor:_buttonColor
                                                              andSize:self.frame.size
                                                      andShadowHeight:_shadowHeight
                                                       andShadowColor:_shadowColor
                                                      andCornerRadius:_cornerRadius];
    }
    else
    {
        // Rectangular or rounded-corner buttons
        buttonNormal = [UIImage buttonWithColor:_buttonColor
                                        andSize:self.frame.size
                                andShadowHeight:_shadowHeight
                                 andShadowColor:_shadowColor
                                andCornerRadius:_cornerRadius];
        
        buttonHighlighted = [UIImage buttonWithHighlightedColor:_buttonColor
                                                        andSize:self.frame.size
                                                andShadowHeight:_shadowHeight
                                                 andShadowColor:_shadowColor
                                                andCornerRadius:_cornerRadius];
    }
    [self setBackgroundImage:buttonNormal forState:UIControlStateNormal];
    [self setBackgroundImage:buttonHighlighted forState:UIControlStateHighlighted];
}

@end
