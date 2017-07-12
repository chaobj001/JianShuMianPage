//
//  PeronalNavView.m
//
//  Created by Lois_pan on 17/3/22.
//  Copyright © 2017年 pgq. All rights reserved.
//

#import "PeronalNavView.h"

@implementation PeronalNavView

- (void)createView_whiteBack {
    self.backgroundColor = [UIColor whiteColor];
    
    UIButton * backButton = ({
        UIButton * button = [UIButton new];
        [button setBackgroundImage:[UIImage imageNamed:@"navbar_back.png"] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(backButtonClick) forControlEvents:UIControlEventTouchUpInside];
        button;
    });
    [self addSubview:backButton];
    [backButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(30);
        make.left.equalTo(self.mas_left).offset(15);
        make.height.equalTo(@22);
        make.width.equalTo(@22);
    }];
    
    UIButton * rightButton = ({
        UIButton * button = [UIButton new];
        [button setBackgroundImage:[UIImage imageNamed:@"navbar_more.png"] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(rightButtonClick) forControlEvents:UIControlEventTouchUpInside];
        button;
    });
    
    [self addSubview:rightButton];
    [rightButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(backButton.mas_centerY);
        make.right.equalTo(self.mas_right).offset(-15);
        make.height.equalTo(@22);
        make.width.equalTo(@22);
    }];

    
    self.titleLabel = ({
        UILabel * label = [UILabel new];
        label.font = [UIFont fontWithName:@"Ariel" size:18];
        label.textAlignment = NSTextAlignmentCenter;
        label;
    });
    [self addSubview:self.titleLabel];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(backButton.mas_centerY);
        make.left.equalTo(self.mas_left).offset(100);
        make.right.equalTo(self.mas_right).offset(-100);
    }];

}

- (void)createView_clearBack {
    
    UIButton * backButton = ({
        UIButton * button = [UIButton new];
        [button setBackgroundImage:[UIImage imageNamed:@"navbar_back_white"] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(backButtonClick) forControlEvents:UIControlEventTouchUpInside];
        button;
    });
    [self addSubview:backButton];
    [backButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(30);
        make.left.equalTo(self.mas_left).offset(15);
        make.height.equalTo(@22);
        make.width.equalTo(@22);
    }];
    
    UIButton * rightButton = ({
        UIButton * button = [UIButton new];
        [button setBackgroundImage:[UIImage imageNamed:@"navbar_more_white"] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(rightButtonClick) forControlEvents:UIControlEventTouchUpInside];
        button;
    });
    
    [self addSubview:rightButton];
    [rightButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(backButton.mas_centerY);
        make.right.equalTo(self.mas_right).offset(-15);
        make.height.equalTo(@22);
        make.width.equalTo(@22);
    }];
    
    self.titleLabel = ({
        UILabel * label = [UILabel new];
        label.font = [UIFont fontWithName:@"Ariel" size:18];
        label.textAlignment = NSTextAlignmentCenter;
        label;
    });
    [self addSubview:self.titleLabel];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(backButton.mas_centerY);
        make.left.equalTo(self.mas_left).offset(100);
        make.right.equalTo(self.mas_right).offset(-100);
    }];

}

- (void)rightButtonClick {
    if (self.personalMoreBlock) {
        self.personalMoreBlock();
    }
}

- (void)backButtonClick {

    if (self.personalBackBlock) {
        self.personalBackBlock();
    }
}

@end
