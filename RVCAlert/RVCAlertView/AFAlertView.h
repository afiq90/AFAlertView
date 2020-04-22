//
//  RVCAlertView.h
//  RVCAlert
//
//  Created by Afiq Hamdan on 4/22/20.
//  Copyright © 2020 Afiq Hamdan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFAlertView : UIView

typedef void(^cancelButtonTapped)(void);
typedef void(^okButtonTapped)(NSInteger tag);

@property (copy, nonatomic) cancelButtonTapped cancelBtnBlock;
@property (copy, nonatomic) okButtonTapped okBtnBlock;
@property (weak, nonatomic) IBOutlet UIView *parentView;
@property (weak, nonatomic) IBOutlet UIView *mainAlertView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *okButton;

+(AFAlertView*)shareView;
-(void)presentView:(UIViewController*)vc;
-(void)dimissView;

@end

NS_ASSUME_NONNULL_END
