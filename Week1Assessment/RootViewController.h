//
//  RootViewController.h
//  Week1Assessment
//
//  Created by bitbender on 3/20/17.
//  Copyright © 2017 Key. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *numberOneField;
@property (weak, nonatomic) IBOutlet UITextField *numberTwoField;
- (IBAction)sumButtonTapped:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *sumLabel;
@property (assign, nonatomic) BOOL webViewUnlocked;
- (IBAction)webButtonTapped:(id)sender;

@end

