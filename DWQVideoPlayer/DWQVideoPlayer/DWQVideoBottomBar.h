//
//  DWQVideoBottomBar.h
//  DWQVideoPlayer
//
//  Created by 杜文全 on 16/2/24.
//  Copyright © 2016年 com.sdzw.duwenquan. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol DWQVideoBottomBarDelegate <NSObject>

- (void)videoBottomBarDidClickPlayPauseBtn;
- (void)videoBottomBarDidClickChangeScreenBtn;
- (void)videoBottomBarDidTapSlider:(UISlider *)slider withTap:(UITapGestureRecognizer *)tap;
- (void)videoBottomBarChangingSlider:(UISlider *)slider;
- (void)videoBottomBarDidEndChangeSlider:(UISlider *)slider;

@end

@interface DWQVideoBottomBar : UIView
@property (nonatomic, weak) id<DWQVideoBottomBarDelegate> delegate;

@property (nonatomic, strong) UIButton *playPauseBtn;
@property (nonatomic, strong) UIButton *changeScreenBtn;

@property (nonatomic, strong) UILabel *currentTimeLabel;
@property (nonatomic, strong) UILabel *totalTimeLabel;

@property (nonatomic, strong) UIProgressView *videoCacheProgress;
@property (nonatomic, strong) UISlider *videoProgressSlider;

+ (instancetype)videoBottomBar;

@end
