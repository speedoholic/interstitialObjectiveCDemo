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
    SMLAdvertisementStatus status = [smlManager showAdvertisement:self];
    switch (status) {
        case SMLAdvertisementStatusComplete:
            NSLog(@"No error found");
            break;
        case SMLAdvertisementStatusReady:
            NSLog(@"NOW READY TO SHOW AD");
            //If your application is having user intensive functionality, you can choose to comment the following line of code.
            [smlManager showAdvertisement:self];
            break;
        case SMLAdvertisementStatusError:
            NSLog(@"Error! Please check your token or contact SunnyMob Customer Care");
            break;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
