//
//  ViewController.m
//  HTPressableButton
//
//  Created by He Rin Kim on 4/14/14.
//  Copyright (c) 2014 He Rin Kim & Thanakron Tandavas. All rights reserved.
//

#import "ViewController.h"
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"HTPressableButtons";
    self.view.backgroundColor = [UIColor cloudsColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Typical Button" forState:UIControlStateNormal];
    button.frame = CGRectMake(80.0, 80.0, 160.0, 40.0);
    button.layer.borderWidth = 1;
    [self.view addSubview:button];
    
    //rectangular grape fruit color button
    CGRect frame = CGRectMake(30, 150, 260, 50);
    HTPressableButton *rectButton = [[HTPressableButton alloc] initWithFrame:frame buttonStyle:HTPressableButtonStyleRect];
    rectButton.buttonColor = [UIColor grapeFruitColor];
    rectButton.shadowColor = [UIColor grapeFruitDarkColor];
    [rectButton setTitle:@"Rect" forState:UIControlStateNormal];
    [self.view addSubview:rectButton];
    
    // Rounded rectangular default color button
    frame = CGRectMake(30, 230, 260, 50);
    HTPressableButton *roundedRectButton = [[HTPressableButton alloc] initWithFrame:frame buttonStyle:HTPressableButtonStyleRounded];
    [roundedRectButton setTitle:@"Rounded" forState:UIControlStateNormal];
    [self.view addSubview:roundedRectButton];
    
    //Circular mint color button
    frame = CGRectMake(110, 300, 100, 100);
    HTPressableButton *circularButton = [[HTPressableButton alloc] initWithFrame:frame buttonStyle:HTPressableButtonStyleCircular];
    circularButton.buttonColor = [UIColor mintColor];
    circularButton.shadowColor = [UIColor mintDarkColor];
    [circularButton setDisabledButtonColor:[UIColor sunflowerColor]];
    [circularButton setTitle:@"Circular" forState:UIControlStateNormal];
    [self.view addSubview:circularButton];
    
    //Disabled rounded rectangular button
    frame = CGRectMake(30, 420, 260, 50);
    HTPressableButton *disabledRoundedRectButton = [[HTPressableButton alloc] initWithFrame:frame buttonStyle:HTPressableButtonStyleRounded];
    disabledRoundedRectButton.disabledButtonColor = [UIColor pinkRoseColor];
    disabledRoundedRectButton.disabledShadowColor = [UIColor pinkRoseDarkColor];
    disabledRoundedRectButton.alpha = 0.5;
    disabledRoundedRectButton.enabled = NO;
    [disabledRoundedRectButton setTitle:@"DisabledButton" forState:UIControlStateNormal];
    [self.view addSubview:disabledRoundedRectButton];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
