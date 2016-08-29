//
//  FViewController.m
//  SetViewControllersDemo
//
//  Created by MCL on 16/8/29.
//  Copyright © 2016年 CHLMA. All rights reserved.
//

#import "FViewController.h"

@interface FViewController ()

@end

@implementation FViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"FViewController";
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%256/255. green:arc4random()%256/255. blue:arc4random()%256/255. alpha:1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"f %@/%@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    [super viewWillAppear:YES];
}

- (void)viewDidAppear:(BOOL)animated{
    NSLog(@"f %@/%@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    [super viewDidAppear:YES];
}

- (void)viewWillDisappear:(BOOL)animated{
    NSLog(@"f %@/%@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated{
    NSLog(@"f %@/%@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    [super viewDidDisappear:YES];
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
