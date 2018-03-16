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
    
    //model转json
    NSDictionary *productDic = [model yy_modelToJSONObject];
    
    /**
     NSUserDefaults支持的数据格式有：NSNumber（Integer、Float、Double），NSString，NSDate，NSArray，NSDictionary，BOOL类型，而我们这里存储的是自定义的model类型-ProductModel，该类型不被支持
     */
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:productDic];
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:key];
    
}


+ (id) mn_getSaveModelWithkey:(NSString *)key modelClass:(Class)modelClass{

    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    NSDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    return [modelClass yy_modelWithJSON:dict];
}
@end


