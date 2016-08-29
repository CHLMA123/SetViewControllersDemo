//
//  BViewController.m
//  SetViewControllersDemo
//
//  Created by MCL on 16/8/29.
//  Copyright © 2016年 CHLMA. All rights reserved.
//

#import "BViewController.h"
#import "CViewController.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"BViewController";
    
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%256/255. green:arc4random()%256/255. blue:arc4random()%256/255. alpha:1];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(PoToView)];
    [self.view addGestureRecognizer:tap];
    self.view.userInteractionEnabled = YES;
    
}

- (void)PoToView{
    
    CViewController *CVC = [[CViewController alloc] init];
    
//    // Method 1
//    NSArray *prePath = self.navigationController.viewControllers;
//    NSArray *newPath = @[prePath[0],prePath[1],CVC];
//    [self.navigationController setViewControllers:newPath];
//
//    [self.navigationController popViewControllerAnimated:YES];
    
//    // Method 2
//    NSMutableArray *viewControllers = [self.navigationController.viewControllers mutableCopy];
//    for (UIViewController *viewController in [viewControllers reverseObjectEnumerator]) {
//        
//        NSString *tempName = NSStringFromClass([viewController class]);
//        NSLog(@"------ NSStringFromClass: %@", tempName);
//        if ([tempName isEqualToString:@"BViewController"]) {
//            [viewControllers removeObject:viewController];
//        }
//    }
//    [viewControllers addObject:CVC];
//    [self.navigationController setViewControllers:viewControllers animated:YES];

    [self.navigationController pushViewController:CVC animated:YES];
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
