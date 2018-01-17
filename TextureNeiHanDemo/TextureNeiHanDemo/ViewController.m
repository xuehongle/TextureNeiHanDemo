//
//  ViewController.m
//  TextureNeiHanDemo
//
//  Created by 薛乐 on 2018/1/17.
//  Copyright © 2018年 薛乐. All rights reserved.
//

#import "ViewController.h"
#import "AllDataModel.h"
#import "NhTableViewCell.h"
#import "DataModel.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView * tableView;
@property (nonatomic, strong) NSMutableArray * data;
@end

@implementation ViewController

#pragma mark: - *****************viewlife*****************
- (void)viewDidLoad {
    [super viewDidLoad];
    
    _data = [[NSMutableArray alloc] init];
    
    _tableView = [[UITableView alloc]initWithFrame:self.view.frame];
    [self.view addSubview:_tableView];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [_tableView registerClass:[NhTableViewCell class] forCellReuseIdentifier:@"NhTableViewCell"];
    _tableView.estimatedRowHeight = 60;
    _tableView.rowHeight = UITableViewAutomaticDimension;
    [self loadData];
}
- (void)dealloc {
    NSLog(@"%s", __FUNCTION__);
}
#pragma mark: - *****************method*****************
- (void)loadData {
    for (int i=0; i<100; i++) {
        DataModel * model = [[DataModel alloc]init];
        [self.data addObject:model];
    }
    [_tableView reloadData];
}

#pragma mark: - *****************delegate*****************
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _data.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NhTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"NhTableViewCell" forIndexPath:indexPath];
    cell.label.text = [NSString stringWithFormat:@"%ld行", indexPath.row];
    return cell;
}

@end
