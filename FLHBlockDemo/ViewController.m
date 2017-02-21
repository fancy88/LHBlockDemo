//
//  ViewController.m
//  FLHBlockDemo
//
//  Created by apple on 17/2/21.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"
#import "LHBlockBasicViewController.h"
#import "LHBlockPropertyViewController.h"
#import "LHBlockParameterViewController.h"
#import "LHBlockReturnViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *mTableView;
@property (nonatomic, strong) NSArray *mArray;

@end

@implementation ViewController

- (NSArray *)mArray{
    if (!_mArray) {
        _mArray = [NSArray arrayWithObjects:
                   @"block的基本使用HBBlockBasicUseVC",
                   @"block作为属性HBBlockPropertyUseVC",
                   @"block作为参数HBBlockParameterUseVC",
                   @"block作为返回值HBBlockReturnUserVC",
                   nil];
    }
    return _mArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"block的简单使用";
    self.mTableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.mTableView.delegate   = self;
    self.mTableView.dataSource = self;
    [self.view addSubview:self.mTableView];
}

#pragma mark - UITableViewDelegate && UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.mArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifiter = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifiter];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifiter];
    }
    cell.textLabel.text = self.mArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
        {
            LHBlockBasicViewController *VC = [[LHBlockBasicViewController alloc] init];
            [self.navigationController pushViewController:VC animated:YES];
        }
            break;
        case 1:
        {
            LHBlockPropertyViewController *VC = [[LHBlockPropertyViewController alloc] init];
            [self.navigationController pushViewController:VC animated:YES];
        }
            break;
        case 2:
        {
            LHBlockParameterViewController *VC = [[LHBlockParameterViewController alloc] init];
            [self.navigationController pushViewController:VC animated:YES];
        }
            break;
        case 3:
        {
            LHBlockReturnViewController *VC = [[LHBlockReturnViewController alloc] init];
            [self.navigationController pushViewController:VC animated:YES];
        }
            break;
            
        default:
            break;
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
