//
//  Weibo.m
//  UnitTest
//
//  Created by lirenqiang on 16/8/4.
//  Copyright © 2016年 lirenqiang. All rights reserved.
//

#import "Weibo.h"

@implementation Weibo

+ (instancetype)weiboWithDict:(NSDictionary *)dict {
    Weibo * obj = [[self alloc] init];
    
    [obj setValuesForKeysWithDictionary:dict];
    
    if (obj.age <= 0 || obj.age >= 130) {
        obj.age = 0;
    }
    
    return obj;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    
}

@end
