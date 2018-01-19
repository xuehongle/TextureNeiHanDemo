//
//  ViewController.m
//  TextureNeiHanDemo
//
//  Created by 薛乐 on 2018/1/17.
//  Copyright © 2018年 薛乐. All rights reserved.
//

#import "ViewController.h"
#import "AnimatedGIFVC.h"
#import "ASCollectionViewVC.h"
#import "AnimalTableController.h"
#import "RainforestCardInfo.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView * tableView;
@property (nonatomic, strong) NSMutableArray * arr;
@end

@implementation ViewController

#pragma mark: - *****************viewlife*****************
- (void)viewDidLoad {
    [super viewDidLoad];
    
    _arr = [NSMutableArray arrayWithObjects:@"AnimatedGIF", @"ASCollectionView", @"asdkDemo", nil];
    
    _tableView = [[UITableView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:_tableView];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
}
- (void)dealloc {
    NSLog(@"%s", __FUNCTION__);
}
#pragma mark: - *****************method*****************

#pragma mark: - *****************delegate*****************
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * cellStr = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellStr];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellStr];
    }
    cell.textLabel.text = self.arr[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController * vc = nil;
    if ([self.arr[indexPath.row] isEqualToString:@"AnimatedGIF"]) {
        vc = [[AnimatedGIFVC alloc]init];
    } else if ([self.arr[indexPath.row] isEqualToString:@"ASCollectionView"]) {
        vc = [[ASCollectionViewVC alloc]init];
    } else if ([self.arr[indexPath.row] isEqualToString:@"asdkDemo"]) {
        vc = [[AnimalTableController alloc] initWithAnimals:[RainforestCardInfo allAnimals]];
    }
    [self.navigationController pushViewController:vc animated:YES];
}
@end
