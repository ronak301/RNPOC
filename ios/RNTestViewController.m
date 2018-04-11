//
//  RNTestViewController.m
//  RNPOC
//
//  Created by Ronak Kothari on 10/04/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "RNTestViewController.h"
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

@interface RNTestViewController ()

@end

@implementation RNTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  NSURL *jsCodeLocation;
  
  jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName:@"RNPOC"
                                               initialProperties:nil
                                                   launchOptions:nil];
  UIView *dummyView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 200)];
  dummyView.backgroundColor = [[UIColor alloc] initWithRed:0.55f green:0.76f blue:0.56f alpha:1.0f];
  [rootView addSubview:dummyView];
  rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
  self.view = rootView;
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
