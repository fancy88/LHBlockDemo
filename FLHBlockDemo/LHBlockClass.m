//
//  LHBlockClass.m
//  FLHBlockDemo
//
//  Created by apple on 17/2/21.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "LHBlockClass.h"

@implementation LHBlockClass

// 属性
- (void)blockPropertyUse{
    self.block(@"block作为属性被执行了");
    self.block2(@"block属性被执行", 666);
    NSLog(@"blockPropertyUse 方法被执行");
}

// 参数
- (void)method: (MyBlockParameter)blcok3{
    int a = arc4random() % 100 + 1;
    blcok3 (a);
}

- (void)parameter: (int)A andParameterB: (int)B andReturn: (MyBlockParameterTwo)block{
    int c = 0;
    c = A * B;
    block(c, A);
}

// block 作为返回值
- (MyBlockReturn)getBlock{
    return ^{
        NSLog(@"getBlock被调用");
    };
}

@end
