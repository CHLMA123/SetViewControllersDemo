//
//  ViewController.m
//  SetViewControllersDemo
//
//  Created by MCL on 16/8/29.
//  Copyright © 2016年 CHLMA. All rights reserved.
//

#import "RootViewController.h"
#import "AViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"RootViewController";
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%256/255. green:arc4random()%256/255. blue:arc4random()%256/255. alpha:1];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(PushAView)];
    [self.view addGestureRecognizer:tap];
    self.view.userInteractionEnabled = YES;
    
}

- (void)PushAView{
    AViewController *AVC = [[AViewController alloc] init];
    [self.navigationController pushViewController:AVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
