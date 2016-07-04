//
//  ViewController.m
//  Fonting Awesome
//
//  Created by David Park on 7/3/16.
//  Copyright © 2016 David Park. All rights reserved.
//

#import "ViewController.h"
#import "FontAwesomeKit/FAKFontAwesome.h"
#import "FontAwesomeKit/FAKFoundationIcons.h"
#import "FontAwesomeKit/FAKZocial.h"
#import "FontAwesomeKit/FAKIonIcons.h"
#import "FontAwesomeKit/FontAwesomeKit.h"
#import "CWStatusBarNotification.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button;
@property (strong, nonatomic) CWStatusBarNotification *notification;
@property (strong , nonatomic) UILongPressGestureRecognizer *longPress;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(gestureAction)];
    [self.longPress setDelegate:self];
    [self.view addGestureRecognizer:self.longPress];
    
    FAKFontAwesome *sunIcon = [FAKFontAwesome sunOIconWithSize:40];
    [sunIcon addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor]];
    [self.button setAttributedTitle:[sunIcon attributedString] forState:UIControlStateNormal];
    
    self.notification = [[CWStatusBarNotification alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)gestureAction {
    
    [self.notification displayNotificationWithMessage:@"Just hold on we're going Home" forDuration:2.0f];
}

- (IBAction)buttonPressed:(id)sender {
    
    FAKFontAwesome *starIcon = [FAKFontAwesome starIconWithSize:40];
    [starIcon addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor]];
    [self.button setAttributedTitle:[starIcon attributedString] forState:UIControlStateNormal];
    
    [self.notification displayNotificationWithMessage:@"Ah, push it - push it real good" forDuration:2.0f];
    
}

@end
