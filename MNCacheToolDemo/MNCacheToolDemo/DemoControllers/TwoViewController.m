//
//  TwoViewController.m
//  MNCacheToolDemo
//
//  Created by Lyh on 2018/3/15.
//  Copyright © 2018年 xmhccf. All rights reserved.
//

#import "TwoViewController.h"
#import "YYModel.h"
#import "MNCacheClass.h"
#import "StudentModel.h"
#import "ProductModel.h"
@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self baseSetting];
    
    [self getDatas];
}


- (void)baseSetting {
    self.view.backgroundColor = [UIColor orangeColor];
    self.title = @"TwoVC";
}

- (void)getDatas{
    
    NSLog(@"productModel = %@",_productModel);
    NSLog(@"studentModel = %@",_studentModel);
    
    if(_productModel){
        //如果_productModel有数据，说明是OneVC传过来的，此时进行存储操作
        [MNCacheClass mn_saveModel:_studentModel key:@"studentModel"];
    }else{
        //如果_productModel没有数据，说明当前的rootVC = 当前控制器(TwoVC)，因为_productModel没数据，就必须从MNCacheClass中读取
        _productModel = [MNCacheClass mn_getSaveModelWithkey:@"studentModel" modelClass:[StudentModel class]];
        NSLog(@"get = %@",_productModel);
    }

}

@end
