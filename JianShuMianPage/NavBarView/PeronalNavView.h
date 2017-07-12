//
//  PeronalNavView.h
//
//  Created by Lois_pan on 17/3/22.
//  Copyright © 2017年 pgq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>

typedef void(^PersonalBackBlock)();
typedef void(^PersonalMoreBlock)();
@interface PeronalNavView : UIView
@property (nonatomic, strong) UILabel * titleLabel;
@property (nonatomic, copy) PersonalMoreBlock personalMoreBlock;
@property (nonatomic, copy) PersonalBackBlock personalBackBlock;

- (void)createView_clearBack;
- (void)createView_whiteBack;
@end
