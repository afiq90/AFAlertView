//
//  RVCAlertView.m
//  RVCAlert
//
//  Created by Afiq Hamdan on 4/22/20.
//  Copyright © 2020 Afiq Hamdan. All rights reserved.
//

#import "RVCAlertView.h"

@implementation RVCAlertView

+(RVCAlertView*)shareView {
    
    // load nib
    RVCAlertView *rVCAlertView =  [[[NSBundle mainBundle] loadNibNamed:@"RVCAlertView"
                                                                 owner:self
                                                               options:nil] objectAtIndex: 0];
    rVCAlertView.parentView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
    rVCAlertView.messageLabel.text = @"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ";
    rVCAlertView.mainAlertView.layer.cornerRadius = 10;
    rVCAlertView.cancelButton.layer.cornerRadius = 10;
    rVCAlertView.okButton.layer.cornerRadius = 10;
    
    return rVCAlertView;
}

-(void)presentView:(UIViewController*)vc {
    [vc.view addSubview:self];
}

-(void)dimissView {
    [self removeFromSuperview];
    
}

- (IBAction)cancelButtonTapped:(id)sender {
    [self dimissView];
    if (self.cancelBtnBlock) {
        self.cancelBtnBlock();
    }
}

- (IBAction)okButtonTapped:(UIButton*)sender {
    [self dimissView];
    if (self.okBtnBlock) {
        self.okBtnBlock(sender.tag);
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


@end
