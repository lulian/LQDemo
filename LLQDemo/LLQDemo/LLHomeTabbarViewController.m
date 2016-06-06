//
//  LLHomeTabbarViewController.m
//  LLTabbarDemo
//
//  Created by lulian on 16/6/2.
//  Copyright © 2016年 lulian. All rights reserved.
//

#import "LLHomeTabbarViewController.h"
#import "FirstViewController.h"

@interface LLHomeTabbarViewController ()

@end

@implementation LLHomeTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *items = [[NSMutableArray alloc] init];
    FirstViewController *testOne1 = [[FirstViewController alloc] init];
    testOne1.tabBarItem.title=@"1111111";
    testOne1.title=@"1111111";
    testOne1.view.backgroundColor = [UIColor redColor];
    UINavigationController *homeNav1 =[[UINavigationController alloc]initWithRootViewController:testOne1];
    [items addObject:homeNav1];
    
    FirstViewController *twoController = [[FirstViewController alloc] init];
    twoController.view.backgroundColor = [UIColor grayColor];
    twoController.tabBarItem.title=@"2222222";
    twoController.title=@"2222222";
    UINavigationController *homeNav2 =[[UINavigationController alloc]initWithRootViewController:twoController];
    [items addObject:homeNav2];
    
    FirstViewController *thirdController = [[FirstViewController alloc] init];
    thirdController.view.backgroundColor = [UIColor yellowColor];
    thirdController.tabBarItem.title=@"333333";
    thirdController.title=@"333333";
    UINavigationController *homeNav3 = [[UINavigationController alloc]initWithRootViewController:thirdController];

    [items addObject:homeNav3];

    self.viewControllers=items;
    self.selectedIndex=0;

    [self ll_reloadTabBarItem];
}

- (void)ll_reloadTabBarItem{
    
    self.tabBar.backgroundColor = [UIColor redColor];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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
