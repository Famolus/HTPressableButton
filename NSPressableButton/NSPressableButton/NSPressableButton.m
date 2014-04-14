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

-(void) setButtonColor:(UIColor *)buttonColor
{
    _buttonColor = buttonColor;
    [self createButton];
}

-(void) createButton
{
    UIImage *buttonTop = [UIImage imageWithColor: _buttonColor];
    UIImage *buttonDown = [UIImage imageWithColor: _buttonColor];
    [self setBackgroundImage:buttonTop forState:UIControlStateNormal];
}
@end
