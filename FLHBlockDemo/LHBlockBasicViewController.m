//
//  LHBlockBasicViewController.m
//  FLHBlockDemo
//
//  Created by apple on 17/2/21.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "LHBlockBasicViewController.h"

 int c = 10;

@interface LHBlockBasicViewController ()

@end

@implementation LHBlockBasicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"请看控制台和代码";
    self.view.backgroundColor = [UIColor whiteColor];
    
    /*
     * 1. block 内部默认是不能修改外面的局部变量, 但是可以通过__block关键字修饰来改变局部变量
     * 2. block 内部可以改变全局变量
     */
      // int a = 15;
    __block int b = 20;
    void (^block)() = ^{
       // a = 20; // 程序报错
        b = 25;
        NSLog(@"修改后b = %d", b);
        c = 25;
        NSLog(@"修改后c = %d", c);
    };
    
    block();
    
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
