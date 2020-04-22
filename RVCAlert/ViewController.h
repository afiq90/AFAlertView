//
//  ViewController.h
//  RVCAlert
//
//  Created by Afiq Hamdan on 4/22/20.
//  Copyright © 2020 Afiq Hamdan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFAlertView.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton* showButton;
@property (strong, nonatomic) AFAlertView* alertView;

@end

