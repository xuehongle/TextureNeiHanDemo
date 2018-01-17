//
//  NhTableViewCell.h
//  TextureNeiHanDemo
//
//  Created by 薛乐 on 2018/1/17.
//  Copyright © 2018年 薛乐. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"

@interface NhTableViewCell : UITableViewCell

@property (nonatomic, strong) UILabel *label;

- (void) setObjcet: (DataModel *) model;
@end
