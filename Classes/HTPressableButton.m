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
    return [self initWithFrame:frame buttonStyle:HTPressableButtonStyleRounded];
}

- (instancetype) initWithFrame:(CGRect)frame buttonStyle:(HTPressableButtonStyle)style
{
    if (self = [super initWithFrame:frame])
    {
        [self setDefaultShadowHeightForStyle:style];
        [self setStyle:style];
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
    [super setImageEdgeInsets:UIEdgeInsetsMake(0.0f, 0.0f, shadowHeight, 0.0f)];
    [self createButton];
}

- (void) setStyle:(HTPressableButtonStyle) style
{
    _style = style;
    
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

- (void) setCornerRadius:(CGFloat)cornerRadius
{
    _cornerRadius = cornerRadius;
    [self createButton];
}

#pragma mark - Set Button Default Style

- (UIColor *) buttonColorOrDefault
{
    return _buttonColor ?: [UIColor ht_jayColor];
}

- (UIColor *) shadowColorOrDefault
{
    return _shadowColor ?: [UIColor ht_jayDarkColor];
}

- (UIColor *) disabledButtonColorOrDefault
{
    return _disabledButtonColor ?: [UIColor ht_mediumColor];
}

- (UIColor *) disabledShadowColorOrDefault
{
    return _disabledShadowColor ?: [UIColor ht_mediumDarkColor];
}

- (void) setDefaultShadowHeightForStyle:(HTPressableButtonStyle)style
{
    if (style == HTPressableButtonStyleCircular)
    {
        _shadowHeight = self.frame.size.height * HTShadowCircularDefaultHeightPercentage;
    }
    else
    {
        _shadowHeight = self.frame.size.height * HTShadowDefaultHeightPercentage;
    }
    [super setTitleEdgeInsets:UIEdgeInsetsMake(0.0f, 0.0f, _shadowHeight, 0.0f)];
    [super setImageEdgeInsets:UIEdgeInsetsMake(0.0f, 0.0f, _shadowHeight, 0.0f)];
}


#pragma mark - Set according to button state

- (void) setHighlighted:(BOOL)highlighted
{
    if (highlighted)
    {
        if (self.style == HTPressableButtonStyleCircular)
        {
            [super setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, -((_shadowHeight/4) * HTShadowOffsetWhenPressed), 0)];
            [super setImageEdgeInsets:UIEdgeInsetsMake(0, 0, -((_shadowHeight/4) * HTShadowOffsetWhenPressed), 0)];
        }
        else
        {
            [super setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, -(_shadowHeight * HTShadowOffsetWhenPressed), 0)];
            [super setImageEdgeInsets:UIEdgeInsetsMake(0, 0, -(_shadowHeight * HTShadowOffsetWhenPressed), 0)];
        }
        
    }
    else
    {
        [super setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, _shadowHeight, 0)];
        [super setImageEdgeInsets:UIEdgeInsetsMake(0, 0, _shadowHeight, 0)];
    }
    [super setHighlighted:highlighted];
}

- (void) setEnabled:(BOOL)enabled
{
    [super setEnabled:enabled];
    
    //The button image when disabled is only created when user disables the button it, this is to avoid wasting space.
    if (!enabled) {
        UIImage *buttonDisabled;
        if (self.style == HTPressableButtonStyleCircular)
        {
            buttonDisabled = [UIImage ht_circularButtonWithColor:[self disabledButtonColorOrDefault]
                                                            size:self.frame.size
                                                    shadowHeight:_shadowHeight
                                                     shadowColor:[self disabledShadowColorOrDefault]
                                                    cornerRadius:_cornerRadius];
        }
        else
        {
            buttonDisabled = [UIImage ht_buttonWithColor:[self disabledButtonColorOrDefault]
                                                    size:self.frame.size
                                            shadowHeight:_shadowHeight
                                             shadowColor:[self disabledShadowColorOrDefault]
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
    
    if (self.style == HTPressableButtonStyleCircular)
    {
        buttonNormal = [UIImage ht_circularButtonWithColor:[self buttonColorOrDefault]
                                                      size:self.frame.size
                                              shadowHeight:_shadowHeight
                                               shadowColor:[self shadowColorOrDefault]
                                              cornerRadius:_cornerRadius];
        
        buttonHighlighted = [UIImage ht_circularButtonWithHighlightedColor:[self buttonColorOrDefault]
                                                                      size:self.frame.size
                                                              shadowHeight:_shadowHeight
                                                               shadowColor:[self shadowColorOrDefault]
                                                              cornerRadius:_cornerRadius];
    }
    else
    {
        // Rectangular or rounded-corner buttons
        buttonNormal = [UIImage ht_buttonWithColor:[self buttonColorOrDefault]
                                              size:self.frame.size
                                      shadowHeight:_shadowHeight
                                       shadowColor:[self shadowColorOrDefault]
                                      cornerRadius:_cornerRadius];
        
        buttonHighlighted = [UIImage ht_buttonWithHighlightedColor:[self buttonColorOrDefault]
                                                              size:self.frame.size
                                                      shadowHeight:_shadowHeight
                                                       shadowColor:[self shadowColorOrDefault]
                                                      cornerRadius:_cornerRadius];
    }
    
    [self setBackgroundImage:buttonNormal forState:UIControlStateNormal];
    [self setBackgroundImage:buttonHighlighted forState:UIControlStateHighlighted];
}

#pragma mark - Deprecated Methods

- (void)setDefaultButtonColor
{
    [self setButtonColor:nil];
}

- (void)setDefaultShadowColor
{
    [self setShadowColor:nil];
}

- (void)setDefaultShadowHeight
{
    [self setDefaultShadowHeightForStyle:self.style];
}

@end
