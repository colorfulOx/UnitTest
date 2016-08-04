//
//  Weibo.h
//  UnitTest
//
//  Created by lirenqiang on 16/8/4.
//  Copyright © 2016年 lirenqiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Weibo : NSObject

@property (nonatomic, assign) NSInteger age;

@property (nonatomic, copy) NSString * name;

+ (instancetype)weiboWithDict:(NSDictionary *)dict;

@end
