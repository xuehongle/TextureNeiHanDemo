//
//  NhTableViewCell.m
//  TextureNeiHanDemo
//
//  Created by 薛乐 on 2018/1/17.
//  Copyright © 2018年 薛乐. All rights reserved.
//

#import "NhTableViewCell.h"
#import "Macro.h"


@implementation NhTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        /// 添加子控件约束
        _label = [[UILabel alloc]init];
        _label.frame = CGRectMake(10, 10, kScreenWidth - 20, 30);
        [self.contentView addSubview:_label];
    }
    
    return self;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

- (void)setObjcet:(DataModel *)model {
    
    
}

@end
