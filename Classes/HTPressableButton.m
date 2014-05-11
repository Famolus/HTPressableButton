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

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        // Initialization code
    }
    return self;
}

#pragma mark - Set Button Style

-(void) setButtonColor:(UIColor *)buttonColor
{
    _buttonColor = buttonColor;
    [self createButton];
}

-(void) setShadowColor:(UIColor *)shadowColor
{
    _shadowColor = shadowColor;
    [self createButton];
}

-(void) setShadowHeight:(CGFloat)shadowHeight
{
    _shadowHeight = shadowHeight;
    [super setTitleEdgeInsets:UIEdgeInsetsMake(0.0f, 0.0f, shadowHeight, 0.0f)];
    [self createButton];
}

-(void) setStyle:(HTPressableButtonStyle) style
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

#pragma mark - Set Button Default Style

-(void) setDefaultButtonColor
{
    _buttonColor = [UIColor jayColor];
}

-(void) setDefaultShadowColor:(UIColor *)shadowColor
{
    _shadowColor = [UIColor jayDarkColor];
}

-(void) setDefaultShadowHeight
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

-(void) setHighlighted:(BOOL)highlighted
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

#pragma mark - Create Button

-(void) createButton
{
    [self.titleLabel setFont:[UIFont fontWithName:@"Avenir" size:18]];
    
    UIImage *buttonNormal;
    UIImage *buttonHighlighted;
    UIImage *buttonDisabled;
    bool isButtonColorSet = _buttonColor;
    bool isShadowColorSet = _shadowColor;
    bool isShadowHeightSet = _shadowHeight;
    bool isButtoncircular = (_cornerRadius > 10);
    
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
        [self setDefaultShadowColor: _buttonColor];
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
        buttonDisabled = [UIImage ht_circularButtonWithColor:[UIColor mediumColor] size:self.frame.size shadowHeight:_shadowHeight shadowColor:[UIColor mediumDarkColor] cornerRadius:_cornerRadius];
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
                                                 chadowColor:_shadowColor
                                                cornerRadius:_cornerRadius];
    }
    
    [self setBackgroundImage:buttonNormal forState:UIControlStateNormal];
    [self setBackgroundImage:buttonHighlighted forState:UIControlStateHighlighted];
    //[self setBackgroundImage:buttonDisabled forState:UIControlStateDisabled];
}

@end
