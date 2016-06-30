//
//  ViewController.m
//  fontingAwesome
//
//  Created by Max Tkach on 6/29/16.
//  Copyright © 2016 Anvil. All rights reserved.
//

#import "ViewController.h"
#import "FontAwesomeKit/FontAwesomeKit.h"
#import "CWStatusBarNotification.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *ohmyLabel;
@property (weak, nonatomic) IBOutlet UIButton *buttonOutlet;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FAKFontAwesome *starIcon = [FAKFontAwesome starIconWithSize:50];
    NSAttributedString *starString = [starIcon attributedString];
    [self.buttonOutlet setAttributedTitle:starString forState:UIControlStateNormal];
}


- (IBAction)buttonAction:(id)sender {
    FAKFontAwesome *anotherIcon = [FAKFontAwesome youtubeIconWithSize:50];
    NSAttributedString *anotherString = [anotherIcon attributedString];
    [self.buttonOutlet setAttributedTitle:anotherString forState:UIControlStateNormal];
    
    CWStatusBarNotification *notification = [CWStatusBarNotification new];
    [notification displayNotificationWithMessage:@"Hello, World!" forDuration:1.0f];
}


@end
