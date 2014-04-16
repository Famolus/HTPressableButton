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


/**************** START DEFAULT VALUE ***************/

/**
 * Set default color of the button
 * @author
 *
 * @attention Don't call this function!
 */
-(void) setDefaultButtonColor
{
    _buttonColor = [UIColor cyanColor];
}

/**
 * Algorithmically calculate the appropriate default color of the shadow according to the button color
 * @author
 *
 * @attention Don't call this function!
 * @param buttonColor color of the button
 */
-(void) setDefaultShadowColor:(UIColor *)buttonColor
{
    
}

/**
 * Algorithmically calculate the appropriate default height of the shadow according to the button height
 * @author
 *
 * @attention Don't call this function!
 * @param buttonHeight height of the button
 */
-(void) setDefaultShadowHeight
{
    _shadowHeight = 10;
    [super setTitleEdgeInsets:UIEdgeInsetsMake(0.0f, 0.0f, 10.0f, 0.0f)];
}

/**************** END DEFAULT VALUE ***************/
- (void) setHighlighted:(BOOL)highlighted {
    UIEdgeInsets insets = highlighted ? UIEdgeInsetsMake(0,0,-(_shadowHeight),0) :UIEdgeInsetsMake(0,0,_shadowHeight,0);
    [super setTitleEdgeInsets:insets];
    [super setHighlighted:highlighted];
}

/**
 * Create NSPressableButton
 * @author He Rin Kim
 */
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
    
    UIImage *buttonNormal = [UIImage buttonWithColor: _buttonColor andSize:self.frame.size andShadowHeight:_shadowHeight];
    [self setBackgroundImage:buttonNormal forState:UIControlStateNormal];

    UIImage *buttonHighlighted = [UIImage buttonWithHighlightedColor: [UIColor purpleColor] andSize:self.frame.size andShadowHeight:_shadowHeight];
    [self setBackgroundImage:buttonHighlighted forState:UIControlStateHighlighted];

}
@end
