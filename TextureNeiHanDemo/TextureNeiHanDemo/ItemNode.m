//
//  ItemNode.m
//  TextureNeiHanDemo
//
//  Created by xue on 2018/1/18.
//  Copyright © 2018年 薛乐. All rights reserved.
//

#import "ItemNode.h"

@implementation ItemNode

- (instancetype)initWithString:(NSString *)string
{
    self = [super init];
    
    if (self != nil) {
        self.text = string;
        [self updateBackgroundColor];
    }
    
    return self;
}

- (void)updateBackgroundColor
{
    if (self.highlighted) {
        self.backgroundColor = [UIColor grayColor];
    } else if (self.selected) {
        self.backgroundColor = [UIColor darkGrayColor];
    } else {
        self.backgroundColor = [UIColor lightGrayColor];
    }
}

- (void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
    
    [self updateBackgroundColor];
}

- (void)setHighlighted:(BOOL)highlighted
{
    [super setHighlighted:highlighted];
    
    [self updateBackgroundColor];
}

@end
