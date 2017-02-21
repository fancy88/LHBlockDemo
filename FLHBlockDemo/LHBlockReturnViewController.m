//
//  LHBlockReturnViewController.m
//  FLHBlockDemo
//
//  Created by apple on 17/2/21.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "LHBlockReturnViewController.h"
#import "LHBlockClass.h"

@interface LHBlockReturnViewController ()

@end

@implementation LHBlockReturnViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"查看控制台输出和代码";
    self.view.backgroundColor = [UIColor whiteColor];
    LHBlockClass *blockClass = [[LHBlockClass alloc] init];
    MyBlockReturn block = [blockClass getBlock];
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
