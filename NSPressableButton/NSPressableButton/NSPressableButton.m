//
//  NSPressableButton.m
//  NSPressableButton
//
//  Created by He Rin Kim on 4/14/14.
//  Copyright (c) 2014 He Rin Kim & Thanakron Tandavas. All rights reserved.
//

#import "NSPressableButton.h"
#import "UIImageCustom.h"

@implementation NSPressableButton

- (id)initWithFrame:(CGRect)frame
{
    NSLog(@"INIT");
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
            }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

/**
 * Set button color
 * @author
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
 * @author
 *
 * @param shadowColor color of the shadow
 */
-(void) setShadowColor:(UIColor *)shadowColor
{
    
}


/**
 * Set the height of the shadow
 * @author
 *
 * @param shadowHeight height of the shadow
 */
-(void) setShadowHeight:(CGFloat)shadowHeight
{
    _shadowHeight = shadowHeight;
    [super setTitleEdgeInsets:UIEdgeInsetsMake(0.0f, 0.0f, shadowHeight, 0.0f)];
    [self createButton];
}

/**
 * Set the shape of the button
 * @author
 *
 * @param style type of shape
 */
-(void) setStyle:(NSString *) style
{
    NSLog(@"in STYLE");
    if ([style isEqual:@"circle"])
        _cornerRadius = self.frame.size.height/2;
    else if([style isEqual:@"rounded"])
        _cornerRadius = 10.0;
    else
        _cornerRadius = 0.0;
    [self createButton];
}

/**************** START DEFAULT VALUE ***************/

-(void) setDefaultButtonColor
{
    _buttonColor = [UIColor cyanColor];
}

-(void) setDefaultShadowColor:(UIColor *)buttonColor
{
    
}

-(void) setDefaultShadowHeight
{
    _shadowHeight = self.frame.size.height/( self.frame.size.height/10);
    [super setTitleEdgeInsets:UIEdgeInsetsMake(0.0f, 0.0f, 10.0f, 0.0f)];
}

- (void) setHighlighted:(BOOL)highlighted {
    if (highlighted)
        [super setTitleEdgeInsets:UIEdgeInsetsMake(0,0,-(_shadowHeight),0)];
    else
        [super setTitleEdgeInsets:UIEdgeInsetsMake(0,0,_shadowHeight,0)];
    [super setHighlighted:highlighted];
}

/**************** END DEFAULT VALUE ***************/

-(void) createButton
{
    NSLog(@"in NSPRESS");

    bool isButtonColorSet = _buttonColor;
    bool isButtonShadowHeightSet = _shadowHeight;
    
    if(!isButtonColorSet)
    {
        [self setDefaultButtonColor];
        NSLog(@"Set default button color");
    }
    if(!isButtonShadowHeightSet)
    {
        [self setDefaultShadowHeight];
        NSLog(@"Set default button shadow height");
    }
    
    UIImage *buttonNormal = [UIImage buttonWithColor: _buttonColor andSize:self.frame.size andShadowHeight:_shadowHeight andCornerRadius:_cornerRadius];
    [self setBackgroundImage:buttonNormal forState:UIControlStateNormal];

    UIImage *buttonHighlighted = [UIImage buttonWithHighlightedColor: _buttonColor andSize:self.frame.size andShadowHeight:_shadowHeight andCornerRadius:_cornerRadius];
    [self setBackgroundImage:buttonHighlighted forState:UIControlStateHighlighted];

}
@end
