//
//  ViewController.m
//  RVCAlert
//
//  Created by Afiq Hamdan on 4/22/20.
//  Copyright © 2020 Afiq Hamdan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadAlertView];
}

-(void)loadAlertView {
    self.alertView = [AFAlertView shareView];
    self.alertView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    self.alertView.cancelBtnBlock = ^{
        // Do your action after user tapped on cancel button
    };
                                      
    self.alertView.okBtnBlock = ^(NSInteger buttonTag) {
        // Do your action after user tapped on ok button

    };
}

- (IBAction)showButtonTapped:(id)sender {
    [self.alertView presentView:self];

}

@end
