//
//  HTPressableButton.m
//  HTPressableButton
//
//  Created by He Rin Kim on 4/14/14.
//  Copyright (c) 2014 He Rin Kim & Thanakron Tandavas. All rights reserved.
//

#import "HTPressableButton.h"
#import "UIImage+HTButton.h"
#import "UIColor+HTColor.h"
#import "HTPressableButtonPrefs.h"

@implementation HTPressableButton

#pragma mark - Init

- (instancetype) initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        // Initialization code
    }
    return self;
}

#pragma mark - Set Button Style

- (void) setButtonColor:(UIColor *)buttonColor
{
    _buttonColor = buttonColor;
    [self createButton];
}

- (void) setShadowColor:(UIColor *)shadowColor
{
    _shadowColor = shadowColor;
    [self createButton];
}

- (void) setShadowHeight:(CGFloat)shadowHeight
{
    _shadowHeight = shadowHeight;
    [super setTitleEdgeInsets:UIEdgeInsetsMake(0.0f, 0.0f, shadowHeight, 0.0f)];
    [self createButton];
}

- (void) setStyle:(HTPressableButtonStyle) style
{
    switch (style) {
        case HTPressableButtonStyleRect:
            _cornerRadius = 0.0;
            break;
        case HTPressableButtonStyleRounded:
            _cornerRadius = 10.0;
            break;
        case HTPressableButtonStyleCircular:
            _cornerRadius = self.frame.size.height/2;
            self.clipsToBounds = YES;
            break;

        default:
            _cornerRadius = 0.0;
            break;
    }
    [self createButton];
}

- (void) setDisabledButtonColor:(UIColor *)disabledButtonColor
{
    _disabledButtonColor = disabledButtonColor;
    [self createButton];
}

- (void) setDisabledShadowColor:(UIColor *)disabledShadowColor
{
    _disabledShadowColor = disabledShadowColor;
    [self createButton];
}

#pragma mark - Set Button Default Style

- (void) setDefaultButtonColor
{
    _buttonColor = [UIColor jayColor];
}

- (void) setDefaultShadowColor
{
    _shadowColor = [UIColor jayDarkColor];
}

- (void) setDefaultDisabledButtonColor
{
    _disabledButtonColor = [UIColor mediumColor];
}

- (void) setDefaultDisabledShadowColor
{
    _disabledShadowColor = [UIColor mediumDarkColor];
}

- (void) setDefaultShadowHeight
{
    bool isButtoncircular = (_cornerRadius > 10);
    if (isButtoncircular)
    {
        _shadowHeight = self.frame.size.height * shadowcircularDefaultHeightPercentage;
    }
    else
    {
        _shadowHeight = self.frame.size.height * shadowDefaultHeightPercentage;
    }
    [super setTitleEdgeInsets:UIEdgeInsetsMake(0.0f, 0.0f, _shadowHeight, 0.0f)];
}

#pragma mark - Set according to button state

- (void) setHighlighted:(BOOL)highlighted
{
    bool isButtoncircular = (_cornerRadius > 10);
    if (highlighted)
    {
        if (isButtoncircular)
        {
            [super setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, -((_shadowHeight/4) * shadowOffetWhenPressed), 0)];
        }
        else
        {
            [super setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, -(_shadowHeight * shadowOffetWhenPressed), 0)];
        }
        
    }
    else
    {
        [super setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, _shadowHeight, 0)];
    }
    [super setHighlighted:highlighted];
}

- (void) setEnabled:(BOOL)enabled
{
    [super setEnabled:enabled];
    
    //The button image when disabled is only created when user disables the button it, this is to avoid wasting space.
    if (!enabled) {
        bool isButtoncircular = (_cornerRadius > 10);
        UIImage *buttonDisabled;
        if (isButtoncircular)
        {
            buttonDisabled = [UIImage ht_circularButtonWithColor:_disabledButtonColor
                                                            size:self.frame.size
                                                    shadowHeight:_shadowHeight
                                                     shadowColor:_disabledShadowColor
                                                    cornerRadius:_cornerRadius];
        }
        else
        {
            buttonDisabled = [UIImage ht_buttonWithColor:_disabledButtonColor
                                                    size:self.frame.size
                                            shadowHeight:_shadowHeight
                                             shadowColor:_disabledShadowColor
                                            cornerRadius:_cornerRadius];
        }

        [self setBackgroundImage:buttonDisabled forState:UIControlStateDisabled];

    }
}

#pragma mark - Create Button

- (void) createButton
{
    [self.titleLabel setFont:[UIFont fontWithName:@"Avenir" size:18]];
    
    UIImage *buttonNormal;
    UIImage *buttonHighlighted;
    bool isButtonColorSet = _buttonColor;
    bool isShadowColorSet = _shadowColor;
    bool isShadowHeightSet = _shadowHeight;
    bool isButtoncircular = (_cornerRadius > 10);
    bool isButtonDisabledColorSet = _disabledButtonColor;
    bool isShadowDisabledColorSet = _disabledShadowColor;

    //To check if user did not set any of these, get the default values.
    if(!isButtonColorSet)
    {
        [self setDefaultButtonColor];
    }
    if(!isShadowHeightSet)
    {
        [self setDefaultShadowHeight];
    }
    if(!isShadowColorSet)
    {
        [self setDefaultShadowColor];
    }
    if (!isButtonDisabledColorSet)
    {
        [self setDefaultDisabledButtonColor];
    }
    if(!isShadowDisabledColorSet)
    {
        [self setDefaultDisabledShadowColor];
    }
    
    if (isButtoncircular)
    {
        buttonNormal = [UIImage ht_circularButtonWithColor:_buttonColor
                                              size:self.frame.size
                                      shadowHeight:_shadowHeight
                                       shadowColor:_shadowColor
                                      cornerRadius:_cornerRadius];
        
        buttonHighlighted = [UIImage ht_circularButtonWithHighlightedColor:_buttonColor
                                                              size:self.frame.size
                                                      shadowHeight:_shadowHeight
                                                       shadowColor:_shadowColor
                                                      cornerRadius:_cornerRadius];
    }
    else
    {
        // Rectangular or rounded-corner buttons
        buttonNormal = [UIImage ht_buttonWithColor:_buttonColor
                                        size:self.frame.size
                                shadowHeight:_shadowHeight
                                 shadowColor:_shadowColor
                                cornerRadius:_cornerRadius];
        
        buttonHighlighted = [UIImage ht_buttonWithHighlightedColor:_buttonColor
                                                        size:self.frame.size
                                                shadowHeight:_shadowHeight
                                                 shadowColor:_shadowColor
                                                cornerRadius:_cornerRadius];
        
    }
    
    [self setBackgroundImage:buttonNormal forState:UIControlStateNormal];
    [self setBackgroundImage:buttonHighlighted forState:UIControlStateHighlighted];
}

@end
