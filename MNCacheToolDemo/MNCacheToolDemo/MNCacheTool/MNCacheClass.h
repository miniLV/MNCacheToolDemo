//
//  MNCacheClass.h
//  HCCF
//
//  Created by Lyh on 2018/3/15.
//  Copyright © 2018年 xmhccf. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MNCacheClass : NSObject

///数据持久化保存的key
+ (void)mn_saveModel:(id)model key:(NSString *)key;

///获取数据持久化保存的Model  - 要传入model的Class - 内部进行yyModel转模型
+ (id) mn_getSaveModelWithkey:(NSString *)key modelClass:(Class)modelClass;

///获取保存的模型数组
+ (id) mn_getSaveModelArrayWithkey:(NSString *)key modelClass:(Class)modelClass;

@end
