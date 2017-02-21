//
//  LHBlockClass.h
//  FLHBlockDemo
//
//  Created by apple on 17/2/21.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

// block 作为属性, 第一步
typedef void(^MyBlockPropertyUse)(NSString *string);
typedef void(^MyBlockPropertyUseTwo)(NSString *str, int a);

// block 作为参数, 第一步
typedef void(^MyBlockParameter)(int a);
typedef void(^MyBlockParameterTwo)(int b, int c);

// block 作为返回值
typedef void(^MyBlockReturn)(void);

@interface LHBlockClass : NSObject

// block 作为属性, 第二步
@property (nonatomic, copy) MyBlockPropertyUse    block;
@property (nonatomic, copy) MyBlockPropertyUseTwo block2;
// block 作为属性
-(void)blockPropertyUse;

//block 作为参数, 第二步
- (void)method: (MyBlockParameter)blcok3;
- (void)parameter: (int)A andParameterB: (int)B andReturn: (MyBlockParameterTwo)block;

// block 作为返回值
- (MyBlockReturn)getBlock;

@end
