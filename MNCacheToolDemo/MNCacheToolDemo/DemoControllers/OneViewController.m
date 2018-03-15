//
//  OneViewController.m
//  MNCacheToolDemo
//
//  Created by Lyh on 2018/3/15.
//  Copyright © 2018年 xmhccf. All rights reserved.
//

#import "OneViewController.h"
#import "TwoViewController.h"
#import "ProductModel.h"
#import "StudentModel.h"
@interface OneViewController ()

@end

@implementation OneViewController{
    
    StudentModel *_studentModel;
    ProductModel *_productModel;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self baseSetting];

    [self setupUI];

    [self loadDatas];
}


- (void)baseSetting {
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.title = @"OneVC";
}

#pragma mark - setupUI
- (void)setupUI{
    
    UIButton *btn = [[UIButton alloc]init];
    btn.frame = CGRectMake(100, 100, 150, 40);
    [self.view addSubview:btn];
    btn.center = self.view.center;
    [btn setTitle:@"next" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor orangeColor]];
    [btn addTarget:self action:@selector(pushToNext) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - loadDatas
- (void)loadDatas{
    
    ProductModel *productModel = [[ProductModel alloc]init];
    productModel.name = @"我的测试产品";
    productModel.ID = @"9527";
    _productModel = productModel;
    
    StudentModel *studentModel = [[StudentModel alloc]init];
    studentModel.name = @"miniLV";
    studentModel.age = 24;
    _studentModel = studentModel;
    
}

- (void)pushToNext{
    
    TwoViewController *nextVC = [[TwoViewController alloc]init];
    nextVC.studentModel = _studentModel;
    nextVC.productModel = _productModel;
    [self.navigationController pushViewController:nextVC animated:YES];
}

@end
