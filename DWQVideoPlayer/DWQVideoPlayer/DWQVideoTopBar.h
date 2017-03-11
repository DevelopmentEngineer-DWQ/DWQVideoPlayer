//
//  DWQVideoTopBar.h
//  DWQVideoPlayer
//
//  Created by 杜文全 on 16/2/24.
//  Copyright © 2016年 com.sdzw.duwenquan. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol DWQVideoTopBarBarDelegate <NSObject>

- (void)videoTopBarDidClickCloseBtn;

@end
@interface DWQVideoTopBar : UIView
@property (nonatomic, weak) id<DWQVideoTopBarBarDelegate> delegate;

@property (nonatomic, strong) UIButton *closeBtn;

@property (nonatomic, strong) UILabel *titleLabel;

+ (instancetype)videoTopBar;
@end
