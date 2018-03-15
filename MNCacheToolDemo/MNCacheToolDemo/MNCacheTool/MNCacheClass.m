//
//  MNCacheClass.m
//  HCCF
//
//  Created by Lyh on 2018/3/15.
//  Copyright © 2018年 xmhccf. All rights reserved.
//

#import "MNCacheClass.h"
#import "YYModel.h"

@implementation MNCacheClass

+ (void)mn_saveModel:(id)model key:(NSString *)key{

    NSDictionary *productDic = [model yy_modelToJSONObject];

    [[NSUserDefaults standardUserDefaults] setObject:productDic forKey:key];
}


+ (id) mn_getSaveModelWithkey:(NSString *)key modelClass:(Class)modelClass{
    
    NSDictionary *dict = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    
    return [modelClass yy_modelWithJSON:dict];
}
@end
