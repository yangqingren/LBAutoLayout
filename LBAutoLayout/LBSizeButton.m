//
//  LBSizeButton.m
//  LBAutoLayout
//
//  Created by 杨庆人 on 17/9/7.
//  Copyright © 2017年 杨庆人. All rights reserved.
//

#import "LBSizeButton.h"
@interface LBSizeButton ()

@end
@implementation LBSizeButton

-(CGSize)intrinsicContentSize
{
    CGSize size = [super intrinsicContentSize];
    return CGSizeMake(size.width + 10 * 2, size.height + 2 * 2);
}

@end
