# MNCacheClass工具类(*一行代码实现model数据的持久化存取~*)

工具方法使用方法：
```
///模型存储 - 数据持久化保存的key
+ (void)mn_saveModel:(id)model key:(NSString *)key;

///读取 - 获取数据持久化保存的Model  - 要传入model的Class - 内部进行yyModel转模型
+ (id) mn_getSaveModelWithkey:(NSString *)key modelClass:(Class)modelClass;
```

```
///模型数组存储 - 获取数据持久化保存的Model  - 要传入model的Class - 内部进行yyModel转模型
+ (id) mn_getSaveModelWithkey:(NSString *)key modelClass:(Class)modelClass;

///获取保存的模型数组
+ (id) mn_getSaveModelArrayWithkey:(NSString *)key modelClass:(Class)modelClass;
```

实际操作：
<br>

- 存储

`
[MNCacheClass mn_saveModel:_studentModel key:@"studentModel"];
`


- 读取

`
StudentModel *get = [MNCacheClass mn_getSaveModelWithkey:@"studentModel" modelClass:[StudentModel class]];
`

<br>

[介绍](https://www.jianshu.com/p/349c8f0165f4)
