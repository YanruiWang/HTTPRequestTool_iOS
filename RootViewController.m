//
//  RootViewController.m
//  odr
//
//  Created by Ma Lijun on 7/12/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "RootViewController.h"


#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTLog.h>

@interface RootViewController () <RCTBridgeModule>

@property (nonatomic, strong) RCTRootView *rootView;

@end

@implementation RootViewController

RCT_EXPORT_MODULE();

- (void)viewDidLoad {
  [super viewDidLoad];
  NSURL *jsCodeLocation;
#if DEBUG
  jsCodeLocation = [NSURL URLWithString:@"http://192.168.1.148:8081/index.bundle?platform=ios"];
#else
  jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
  
  self.rootView =
  [[RCTRootView alloc] initWithBundleURL: jsCodeLocation
                              moduleName: @"RequestToolRN"
                       initialProperties: nil
                           launchOptions: nil];
  self.rootView.backgroundColor = [UIColor whiteColor];
  self.rootView.translatesAutoresizingMaskIntoConstraints = NO;
  [self.view addSubview:self.rootView];
}

-(void)viewDidLayoutSubviews {
  [super viewDidLayoutSubviews];
  [NSLayoutConstraint activateConstraints:@[[self.rootView.topAnchor constraintEqualToAnchor:self.view.topAnchor],
                                            [self.rootView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor],
                                            [self.rootView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
                                            [self.rootView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor]]];
}

RCT_EXPORT_METHOD(tapme) {
  RCTLogInfo(@"native module tap called!!!!!!!!!");
}

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

+ (BOOL)requiresMainQueueSetup
{
  return YES;
}


@end
