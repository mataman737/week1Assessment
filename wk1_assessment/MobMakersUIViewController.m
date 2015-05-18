//
//  MobMakersUIViewController.m
//  wk1_assessment
//
//  Created by Stephen T. Mata on 5/17/15.
//  Copyright (c) 2015 Stephen T. Mata. All rights reserved.
//

#import "MobMakersUIViewController.h"


@interface MobMakersUIViewController () <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *mobMakersWeb;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

@implementation MobMakersUIViewController

#pragma - Landing

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mobMakersWeb.delegate = self;
    NSURL *url = [NSURL URLWithString:@"http://www.mobilemakers.co"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.mobMakersWeb loadRequest:request];

    //Back Button Text - This part took forever (I had a brain fart) - :)
    UIBarButtonItem *btnBack = [[UIBarButtonItem alloc]
                                initWithTitle:@"Back"
                                style:UIBarButtonItemStylePlain
                                target:self
                                action:nil];
    self.navigationController.navigationBar.topItem.backBarButtonItem = btnBack;

    //Alrighty. I wish I was back in SanFran for this one.
    self.navigationItem.title = @"Where I Got Stuck";



}


#pragma - Activity Indicator

//Show Activitiy Indicator Prior To Web Page Loading
-(void)webViewDidStartLoad:(UIWebView *)webView{
    [self.activityIndicator startAnimating];
}

//Hide Activitiy Indicator Once Web Page Loads
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [self.activityIndicator stopAnimating];
    self.activityIndicator.hidden = TRUE;
}


@end
