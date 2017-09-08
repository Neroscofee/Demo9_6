//
//  TestCollectionViewCell.m
//  Demo9_6
//
//  Created by 石飞龙 on 2016/12/26.
//  Copyright © 2016年 石飞龙. All rights reserved.
//

#import "TestCollectionViewCell.h"

@implementation TestCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self.contentView addSubview:self.displayLabel];
    }
    return self;
}

- (UILabel *)displayLabel {
    if (!_displayLabel) {
        _displayLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 44)];
    }
    return _displayLabel;
}

@end
