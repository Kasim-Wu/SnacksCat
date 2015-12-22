//
//  MainViewController.m
//  SnacksCat
//
//  Created by 吴健 on 15/12/23.
//  Copyright © 2015年 Kasim. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 创建主视图控制器
    [self createViewController];
    // 自定义TabBar
    [self createTabBar];
}

- (void)createViewController
{
    NSMutableArray *vcArray = [[NSMutableArray alloc] init];
    NSArray *vcNameArray = @[@"HomeViewController", @"SaleViewController", @"TopicViewController", @"MineViewController"];
    NSArray *titleArray = @[@"首页", @"专题", @"分类", @"我的"];
    for (int i = 0; i < vcNameArray.count; i++) {
        UIViewController *vc = [[NSClassFromString(vcNameArray[i]) alloc] init];
        vc.title = titleArray[i];
        UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:vc];
        [vcArray addObject:navi];
    }
    self.viewControllers = vcArray;
}

- (void)createTabBar
{
    
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
