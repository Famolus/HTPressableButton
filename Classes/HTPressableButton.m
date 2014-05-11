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

@interface HTPressableButton ()

@property (readonly, nonatomic, assign) CGFloat calculatedShadowHeight;

@end

@implementation HTPressableButton

#pragma mark - Init

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        _buttonColor = [UIColor jayColor];
        _shadowColor = [UIColor jayDarkColor];
    }
    return self;
}

- (void)setFrame:(CGRect)frame {
    [super setFrame:frame];
    [self createButton];
}

- (CGFloat)calculatedShadowHeight {
    if (fabs(_shadowHeight - 0.0) > 0.000001) {
        return _shadowHeight;
    }
    
    bool isButtoncircular = (_cornerRadius > 10);
    return CGRectGetHeight(self.frame) *
    (isButtoncircular ? shadowcircularDefaultHeightPercentage : shadowDefaultHeightPercentage);
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
    _style = style;
    switch (style) {
        case HTPressableButtonStyleRect:
            _cornerRadius = 0.0;
            break;
        case HTPressableButtonStyleRounded:
            _cornerRadius = 10.0;
            break;
        case HTPressableButtonStyleCircular:
            _cornerRadius = CGRectGetHeight(self.frame) / 2.0;
            self.clipsToBounds = YES;
            break;

        default:
            _cornerRadius = 0.0;
            break;
    }
    [self createButton];
}

#pragma mark - Set Button Default Style

-(void) setHighlighted:(BOOL)highlighted
{
    bool isButtoncircular = (_cornerRadius > 10);
    if (highlighted)
    {
        if (isButtoncircular)
        {
            [super setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, -((self.calculatedShadowHeight/4) * shadowOffetWhenPressed), 0)];
        }
        else
        {
            [super setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, -(self.calculatedShadowHeight * shadowOffetWhenPressed), 0)];
        }
        
    }
    else
    {
        [super setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, self.calculatedShadowHeight, 0)];
    }
    [super setHighlighted:highlighted];
}

#pragma mark - Create Button

-(void) createButton
{
    [self.titleLabel setFont:[UIFont fontWithName:@"Avenir" size:18]];
    
    UIImage *buttonNormal = nil;
    UIImage *buttonHighlighted = nil;
    UIImage *buttonDisabled = nil;
    bool isButtoncircular = (_cornerRadius > 10);
    
    CGFloat shadowHeight = self.calculatedShadowHeight;
    
    if (isButtoncircular)
    {
        buttonNormal = [UIImage circularButtonWithColor:_buttonColor
                                              andSize:self.frame.size
                                      andShadowHeight:shadowHeight
                                       andShadowColor:_shadowColor
                                      andCornerRadius:_cornerRadius];
        
        buttonHighlighted = [UIImage circularButtonWithHighlightedColor:_buttonColor
                                                              andSize:self.frame.size
                                                      andShadowHeight:shadowHeight
                                                       andShadowColor:_shadowColor
                                                      andCornerRadius:_cornerRadius];
        buttonDisabled = [UIImage circularButtonWithColor:[UIColor mediumColor] andSize:self.frame.size andShadowHeight:shadowHeight andShadowColor:[UIColor mediumDarkColor] andCornerRadius:_cornerRadius];
    }
    else
    {
        // Rectangular or rounded-corner buttons
        buttonNormal = [UIImage buttonWithColor:_buttonColor
                                        andSize:self.frame.size
                                andShadowHeight:shadowHeight
                                 andShadowColor:_shadowColor
                                andCornerRadius:_cornerRadius];
        
        buttonHighlighted = [UIImage buttonWithHighlightedColor:_buttonColor
                                                        andSize:self.frame.size
                                                andShadowHeight:shadowHeight
                                                 andShadowColor:_shadowColor
                                                andCornerRadius:_cornerRadius];
    }
    
    [self setBackgroundImage:buttonNormal forState:UIControlStateNormal];
    [self setBackgroundImage:buttonHighlighted forState:UIControlStateHighlighted];
    [self setBackgroundImage:buttonDisabled forState:UIControlStateDisabled];
}

@end
