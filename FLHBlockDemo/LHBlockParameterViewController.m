//
//  LHBlockParameterViewController.m
//  FLHBlockDemo
//
//  Created by apple on 17/2/21.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "LHBlockParameterViewController.h"
#import "LHBlockClass.h"

@interface LHBlockParameterViewController ()

@end

@implementation LHBlockParameterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"查看控制台输出和代码";
    self.view.backgroundColor = [UIColor whiteColor];
    
    LHBlockClass *blockClass = [[LHBlockClass alloc] init];
    [blockClass method:^(int a) {
        NSLog(@"a = %d", a);
    }];
    
    [blockClass parameter:4 andParameterB:5 andReturn:^(int b, int c) {
        NSLog(@"b = %d, c = %d", b, c);
    }];
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
