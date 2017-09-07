//
//  ViewController.m
//  LBAutoLayout
//
//  Created by 杨庆人 on 17/9/7.
//  Copyright © 2017年 杨庆人. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>
#import "LBSizeButton.h"

@interface ViewController ()
@property (nonatomic,strong)UILabel *lbLabel;
@property (nonatomic,strong)UILabel *shadowLabel;
@property (nonatomic,strong)LBSizeButton * button;
@end

@implementation ViewController

- (UILabel *)lbLabel {
    if (!_lbLabel) {
        _lbLabel = [[UILabel alloc] init];
        _lbLabel.text = @"我是不定长度的Label";
        _lbLabel.backgroundColor = [UIColor yellowColor];
        _lbLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _lbLabel.numberOfLines = 0;
    }
    return _lbLabel;
}

- (UILabel *)shadowLabel {
    if (!_shadowLabel) {
        _shadowLabel = [[UILabel alloc] init];
        _shadowLabel.text = @"我是另一个label";
        _shadowLabel.backgroundColor = [UIColor grayColor];
        _shadowLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _shadowLabel.numberOfLines = 0;
    }
    return _shadowLabel;
}

- (LBSizeButton *)button {
    if (!_button) {
        _button = [LBSizeButton buttonWithType:UIButtonTypeCustom];
        [_button setTitle:@"Log in" forState:UIControlStateNormal];
        _button.layer.cornerRadius = 4;
        _button.backgroundColor = [UIColor grayColor];
    }
    return _button;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.button];
    
    [self.button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
    }];
    
//    [self.view addSubview:self.shadowLabel];
    
//    self.view.translatesAutoresizingMaskIntoConstraints = NO;
//    
//    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:self.lbLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:80];
//    
//    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:self.lbLabel attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:30];
//    
//    
//    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:self.lbLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:150];
    
    // 等价的Masonry代码
    /*
    [self.lbLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.mas_equalTo(self.view).offset(80);
    }];
    [self.shadowLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.lbLabel.mas_top);
        make.left.mas_equalTo(self.lbLabel.mas_right);
    }];
     */

    
//    [self.view addConstraints:@[topConstraint, leftConstraint, widthConstraint]];
//
//    NSLayoutConstraint *shadowConstraint1 = [NSLayoutConstraint constraintWithItem:self.shadowLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.lbLabel attribute:NSLayoutAttributeTop multiplier:1 constant:0];
//    
//    // shadowLabel的right等于lbLabel的left
//    NSLayoutConstraint *shadowConstraint = [NSLayoutConstraint constraintWithItem:self.shadowLabel attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.lbLabel attribute:NSLayoutAttributeRight multiplier:1 constant:0];
    
//    NSLayoutConstraint *shadowConstraint3 = [NSLayoutConstraint constraintWithItem:self.shadowLabel attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.lbLabel attribute:NSLayoutAttributeRight multiplier:1 constant:0];
    
//    [self.view addConstraints:@[shadowConstraint1, shadowConstraint2]];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
