//
//  HomeViewController.m
//  MNCacheToolDemo
//
//  Created by Lyh on 2018/3/15.
//  Copyright © 2018年 xmhccf. All rights reserved.
//

#import "HomeViewController.h"
#import "OneViewController.h"
@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self baseSetting];
    
    [self setupUI];
}

- (void)baseSetting {
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"homeVC";
}

#pragma mark - setupUI
- (void)setupUI{
    
    UIButton *btn = [[UIButton alloc]init];
    btn.frame = CGRectMake(100, 100, 150, 40);
    [self.view addSubview:btn];
    btn.center = self.view.center;
    [btn setTitle:@"next" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor lightGrayColor]];
    [btn addTarget:self action:@selector(pushToNext) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pushToNext{
    
    OneViewController *nextVC = [[OneViewController alloc]init];
    [self.navigationController pushViewController:nextVC animated:YES];
    
}

@end
