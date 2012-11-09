//
//  ProfileViewController.h
//  dummy
//
//  Created by nov on 2012/11/09.
//  Copyright (c) 2012年 nov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController
@property (retain, nonatomic) IBOutlet UILabel *title_label;
@property (retain, nonatomic) IBOutlet UITextView *user_info_area;
@property (retain, nonatomic) IBOutlet UIButton *logout_button;
- (IBAction)logout:(id)sender;
@end
