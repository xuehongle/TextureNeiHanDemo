//
//  AnimatedGIFVC.m
//  TextureNeiHanDemo
//
//  Created by xue on 2018/1/18.
//  Copyright © 2018年 薛乐. All rights reserved.
//

#import "AnimatedGIFVC.h"
#import <AsyncDisplayKit/AsyncDisplayKit.h>

@interface AnimatedGIFVC ()

@end

@implementation AnimatedGIFVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    ASNetworkImageNode *imageNode = [[ASNetworkImageNode alloc] init];
    //  imageNode.URL = [NSURL URLWithString:@"https://i.pinimg.com/originals/07/44/38/074438e7c75034df2dcf37ba1057803e.gif"];
    imageNode.URL = [NSURL URLWithString:@"https://a-ssl.duitang.com/uploads/item/201412/24/20141224160924_Ei4RX.png"];
    // Uncomment to see animated webp support
    //  imageNode.URL = [NSURL URLWithString:@"https://storage.googleapis.com/downloads.webmproject.org/webp/images/dancing_banana2.lossless.webp"];
    imageNode.frame = self.view.bounds;
    imageNode.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    imageNode.contentMode = UIViewContentModeScaleAspectFit;
    
    [self.view addSubnode:imageNode];
}


@end
