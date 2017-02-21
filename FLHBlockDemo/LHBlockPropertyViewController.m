//
//  LHBlockPropertyViewController.m
//  FLHBlockDemo
//
//  Created by apple on 17/2/21.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "LHBlockPropertyViewController.h"
#import "LHBlockClass.h"

@interface LHBlockPropertyViewController ()

@end

@implementation LHBlockPropertyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"请看控制台和代码";
    self.view.backgroundColor = [UIColor whiteColor];
    // block作为属性实现
    LHBlockClass *blockClass = [[LHBlockClass alloc] init];
    // 一个参数
    blockClass.block = ^(NSString *str){
        NSLog(@"string = %@",str);
    };
    
    // 两个参数
    blockClass.block2 = ^(NSString *str, int a){
         NSLog(@"string = %@, a = %d",str, a);
    };
    
    [blockClass blockPropertyUse];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
