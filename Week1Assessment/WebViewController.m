//
//  WebViewController.m
//  Week1Assessment
//
//  Created by bitbender on 3/20/17.
//  Copyright © 2017 Key. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()<UIWebViewDelegate,UITextFieldDelegate>

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.goButton addTarget:self action:@selector(loadURL) forControlEvents:UIControlEventTouchUpInside];
    self.webView.delegate = self; //set delegate
    self.textInput.delegate = self;
    [self loadURL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadURL {
    [self.textInput resignFirstResponder];
    NSURL *URL;
    if (self.textInput.text.length < 1){
        NSString *string = @"https://google.com";
        URL = [NSURL URLWithString:string];
    } else {
        URL = [NSURL URLWithString:self.textInput.text];
    }
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    [self.webView loadRequest:request];
    
}

//implement
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    
    //    1. create the alert/instance of UIAlertAction
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"WebView Error" message:error.localizedDescription preferredStyle:UIAlertControllerStyleAlert];
    
    //    2. create action
    UIAlertAction *dismissAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDestructive handler:NULL];
    
    //    3. Add action to alert
    if([error code] == NSURLErrorCancelled) return;
    [alert addAction:dismissAction];
    
    //    4. present alert
    [self presentViewController:alert animated:YES completion:NULL];
    [self.view viewWithTag:100].hidden = YES;
}

@end
