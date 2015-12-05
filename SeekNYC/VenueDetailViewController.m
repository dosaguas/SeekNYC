//
//  VenueDetailViewController.m
//  SeekNYC
//
//  Created by Christella on 12/5/15.
//  Copyright © 2015 Justine Kay. All rights reserved.
//

#import "VenueDetailViewController.h"

#import "SeekNYCParks.h"
#import "NYCMapViewController.h"

@interface VenueDetailViewController ()

@end

@implementation VenueDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL *url = [NSURL URLWithString:@"https://en.wikipedia.org/wiki/New_York_City"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webview loadRequest:request];
    
    
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    
    
    [self.backButton addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];


}

- (void)dismiss {
    [self dismissViewControllerAnimated:YES completion:nil];
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
