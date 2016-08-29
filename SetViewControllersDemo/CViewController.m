//
//  CViewController.m
//  SetViewControllersDemo
//
//  Created by MCL on 16/8/29.
//  Copyright © 2016年 CHLMA. All rights reserved.
//

#import "CViewController.h"
#import "DViewController.h"
#import "UIViewController+BackButtonHandler.h"

@interface CViewController ()

@property (nonatomic, assign) NSInteger numVCPre;

@end

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    self.title = @"CViewController";
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%256/255. green:arc4random()%256/255. blue:arc4random()%256/255. alpha:1];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(PushView)];
    [self.view addGestureRecognizer:tap];
    self.view.userInteractionEnabled = YES;
    
}

///**
// *  获取点击系统的返回按钮的事件
// */
//- (BOOL)navigationShouldPopOnBackButton{
//    
//    return YES;
//}

// indexOfObject: 判断指定的Object 对象是否存在数组中如果存在返回，对象所在的下标
//-(void)viewWillDisappear:(BOOL)animated {
//    
//    if ([self.navigationController.viewControllers indexOfObject:self] == NSNotFound) {
//        // back button was pressed.  We know this is true because self is no longer
//        // in the navigation stack.
//        NSLog(@"Pop Action ...");
//        
//    }else if ([self.navigationController.viewControllers containsObject:self]){
//        
//        NSLog(@"Push Action ...");
//    }
//    [super viewWillDisappear:animated];
//}

- (void)PushView{

    DViewController *DVC = [[DViewController alloc] init];
    [self.navigationController pushViewController:DVC animated:YES];
    
//    NSArray *vcs = self.navigationController.viewControllers;
    
//    [self.navigationController popToViewController:vcs[0] animated:YES];
//    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)dealloc
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"%@/%@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    [super viewWillAppear:YES];
}

- (void)viewDidAppear:(BOOL)animated{
    NSLog(@"%@/%@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    [super viewDidAppear:YES];
}

- (void)viewWillDisappear:(BOOL)animated{
    NSLog(@"%@/%@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated{
    NSLog(@"%@/%@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
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
