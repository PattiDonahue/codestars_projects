//
//  AboutViewController.m
//  TravelTheUSA
//
//  Created by Patti Donahue on 9/7/15.
//  Copyright (c) 2015 PD. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Add code to load web content in UIWebview
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"aboutTravel.html" ofType:nil]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webview loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
