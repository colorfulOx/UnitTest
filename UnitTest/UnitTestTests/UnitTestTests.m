//
//  UnitTestTests.m
//  UnitTestTests
//
//  Created by lirenqiang on 16/8/4.
//  Copyright © 2016年 lirenqiang. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Weibo.h"

@interface UnitTestTests : XCTestCase

@end

@implementation UnitTestTests

/// 一次单元测试开始前的准备工作,可以设置全局变量
- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

/// 一次单元测试结束前的销毁工作.
- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}
/** 
1. 单元测试时以代码测试代码
2. 红灯/绿灯迭代开发
3. 在日常开发中,数据大部分来自于网络,很难出现`所有的`边界数据如果没有测试所有条件就商家,在运行时造成闪退.
4. 自己建立`测试用例`(使用例子数据,专门检查边界点)`
 */
- (void)testWeibo {
    // This is an example of a functional test case.
    [self checkWeiboWithDict:@{@"name": @"zhangsan", @"age":@20}];
    [self checkWeiboWithDict:@{@"name": @"zhang"}];
    [self checkWeiboWithDict:@{}];
    [self checkWeiboWithDict:@{@"name": @"zhangsan", @"age":@-1, @"title":@"boss"}];
    [self checkWeiboWithDict:@{@"name": @"zhangsan", @"age":@200, @"title":@"boss"}];

    //到目前为止Person 的工厂方法 测试完成
}

- (void)checkWeiboWithDict:(NSDictionary *)dict {
    
    Weibo * weibo = [Weibo weiboWithDict:dict];
    NSLog(@"%@", weibo);
    NSString * name = dict[@"name"];
    NSInteger age = [dict[@"age"] integerValue];
    /// 1.检查名称
    
    
    XCTAssert([name isEqualToString:weibo.name] || name == nil, @"姓名不一致");
    if (weibo.age > 0 && weibo.age  <130) {
        XCTAssert(age == weibo.age, @"年龄不正确");
    } else {
        XCTAssert(weibo.age == 0, @"年龄超限");
    }
    
}



@end




























































