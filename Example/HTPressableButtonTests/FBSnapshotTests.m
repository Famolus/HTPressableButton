//
//  SnapshotTests.m
//  HTPressableButton
//
//  Created by Paul Williamson on 17/05/2014.
//  Copyright (c) 2014 He Rin Kim & Thanakron Tandavas. All rights reserved.
//

#import "FBSnapshotTestCase.h"
#import "HTPressableButton.h"
#import "UIColor+HTColor.h"

@interface SnapshotTests : FBSnapshotTestCase
@property (assign, nonatomic) CGRect frame;
@end

@implementation SnapshotTests

- (void)setUp
{
    [super setUp];
    
    self.frame = CGRectMake(0, 0, 200, 44);
    
    // Flip this to YES to record images in the reference image directory.
    // You need to do this the first time you create a test and whenever you change the snapshotted views.
    // Tests running in record mode will allways fail so that you know that you have to do something here before you commit.
    
    self.recordMode = NO;
}

#pragma mark - Rectangle Button Tests

- (void)testRectangleButton
{
    HTPressableButton *button = [[HTPressableButton alloc] initWithFrame:self.frame buttonStyle:HTPressableButtonStyleRect];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    FBSnapshotVerifyView(button, nil);
}

- (void)testRectangleButtonHighlighted
{
    HTPressableButton *button = [[HTPressableButton alloc] initWithFrame:self.frame buttonStyle:HTPressableButtonStyleRect];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button setHighlighted:YES];
    FBSnapshotVerifyView(button, nil);
}

#pragma mark - Rounded Rectangle Tests

- (void)testRoundedRectangleButton
{
    HTPressableButton *button = [[HTPressableButton alloc] initWithFrame:self.frame buttonStyle:HTPressableButtonStyleRounded];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    FBSnapshotVerifyView(button, nil);
}

- (void)testRoundedRectangleButtonHighlighted
{
    HTPressableButton *button = [[HTPressableButton alloc] initWithFrame:self.frame buttonStyle:HTPressableButtonStyleRounded];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button setHighlighted:YES];
    FBSnapshotVerifyView(button, nil);
}

#pragma mark - Circular Button Tests

- (void)testCircularButton
{
    CGRect frame = CGRectMake(0, 0, 80, 80);
    HTPressableButton *button = [[HTPressableButton alloc] initWithFrame:frame buttonStyle:HTPressableButtonStyleCircular];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    FBSnapshotVerifyView(button, nil);
}

- (void)testCircularButtonHighlighted
{
    CGRect frame = CGRectMake(0, 0, 80, 80);
    HTPressableButton *button = [[HTPressableButton alloc] initWithFrame:frame buttonStyle:HTPressableButtonStyleCircular];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button setHighlighted:YES];
    FBSnapshotVerifyView(button, nil);
}

#pragma mark - Disabled State Tests

- (void)testDefaultDisabledColor
{
    HTPressableButton *button = [[HTPressableButton alloc] initWithFrame:self.frame buttonStyle:HTPressableButtonStyleRect];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button setEnabled:NO];
    FBSnapshotVerifyView(button, nil);
}

- (void)testCustomDisabledColor
{
    HTPressableButton *button = [[HTPressableButton alloc] initWithFrame:self.frame buttonStyle:HTPressableButtonStyleRect];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button setDisabledButtonColor:[UIColor lemonColor]];
    [button setDisabledShadowColor:[UIColor lemonDarkColor]];
    [button setEnabled:NO];
    FBSnapshotVerifyView(button, nil);
}

#pragma mark - Property Tests

- (void)testCornerRadius
{
    HTPressableButton *button = [[HTPressableButton alloc] initWithFrame:self.frame buttonStyle:HTPressableButtonStyleRounded];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button setCornerRadius:4.0f];
    [button createButton];
    FBSnapshotVerifyView(button, nil);
}

- (void)testShadowHeight
{
    HTPressableButton *button = [[HTPressableButton alloc] initWithFrame:self.frame buttonStyle:HTPressableButtonStyleRect];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button setShadowHeight:4.0f];
    FBSnapshotVerifyView(button, nil);
}

@end