//
//  UIButton+Block.m
//  Demo9_6
//
//  Created by 石飞龙 on 2017/3/3.
//  Copyright © 2017年 石飞龙. All rights reserved.
//

#import "UIButton+Block.h"
#import <objc/runtime.h>

static char buttonKey;//
@implementation UIButton (Block)

- (void)handleWithBlock:(buttonBlock)block {
    if (block) {
        objc_setAssociatedObject(self, &buttonKey, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    }
    [self addTarget:self action:@selector(methodForButton:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)methodForButton:(UIButton *)button {
    buttonBlock block = objc_getAssociatedObject(self, &buttonKey);
    block();
}

@end
