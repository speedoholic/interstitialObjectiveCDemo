//
//  ViewController.m
//  ObjCDemo
//
//  Created by Gowri on 5/24/16.
//  Copyright © 2016 sunnymob. All rights reserved.
//

#import "ViewController.h"
#import <Sunny/Sunny-Swift.h>

@interface ViewController ()

@end

@implementation ViewController 

- (IBAction)showAdButtonClicked:(id)sender {
    SMLManager *smlManager = [SMLManager sharedInstance];
    [smlManager showAdvertisement:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    SMLManager *smlManager = [SMLManager sharedInstance];
    [smlManager setDelegate:self];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)smlDidShowAd {
    NSLog(@"Ad displayed successfully");
}

- (void)smlAdNotReady {
    NSLog(@"Ad is not ready yet");
}

- (void)smlAdClosed {
    NSLog(@"Ad closed by user");
}

- (void)smlAdIsNowReady:(NSString *)campaignId mediaType:(NSString *)mediaType {
    NSLog(@"Ad is now ready for %@ with Media Type: %@",campaignId,mediaType);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
