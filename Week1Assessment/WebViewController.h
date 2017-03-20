//
//  WebViewController.h
//  Week1Assessment
//
//  Created by bitbender on 3/20/17.
//  Copyright © 2017 Key. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textInput;
@property (weak, nonatomic) IBOutlet UIButton *goButton;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
- (IBAction)onBackButtonPressed:(id)sender;

@end
