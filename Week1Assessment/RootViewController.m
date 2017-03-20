//
//  RootViewController.m
//  Week1Assessment
//
//  Created by bitbender on 3/20/17.
//  Copyright © 2017 Key. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _webViewUnlocked = NO;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)sumButtonTapped:(id)sender {
    NSInteger firstNum = [_numberOneField.text integerValue];
    NSInteger secondNum = [_numberTwoField.text integerValue];
    NSInteger sum = firstNum + secondNum;
    if (sum == 999) {
//        send to web view
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Web view unlocked!" message:@"Click the web button to begin browsing!" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* ok = [UIAlertAction actionWithTitle:@"NEXT" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
            _webViewUnlocked = YES;
        }];
        
        [alertController addAction:ok];
        
        [self presentViewController:alertController animated:YES completion:nil];
    }
    else if (sum % 9 == 0) {
//        show pop up saying genius
        //    send a pop up to tell them they got it right
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Genius!" message:@"Get a value of 999 to unlock web browsing" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* ok = [UIAlertAction actionWithTitle:@"NEXT" style:UIAlertActionStyleDefault handler:nil];
        
        [alertController addAction:ok];
        
        [self presentViewController:alertController animated:YES completion:nil];
    }
    _sumLabel.text = [NSString stringWithFormat: @"%ld", (long)sum];
}
- (IBAction)webButtonTapped:(id)sender {
    if (_webViewUnlocked) {
        [self performSegueWithIdentifier:@"toWebView" sender:self];
    }
}
@end
