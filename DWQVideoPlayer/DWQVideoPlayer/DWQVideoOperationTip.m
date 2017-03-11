//
//  DWQVideoOperationTip.m
//  DWQVideoPlayer
//
//  Created by 杜文全 on 16/2/24.
//  Copyright © 2016年 com.sdzw.duwenquan. All rights reserved.
//

#import "DWQVideoOperationTip.h"
#import "Masonry.h"

#define DWQVideoPlayerImageName(fileName) [@"DWQVideoPlayer.bundle" stringByAppendingPathComponent:fileName]

@interface DWQVideoOperationTip ()

@property (nonatomic, strong) UIImageView *tipImageView;

@property (nonatomic, strong) UILabel *tipLabel;

@end

@implementation DWQVideoOperationTip

- (UIImageView *)tipImageView {
    
    if (!_tipImageView) {
        _tipImageView = [[UIImageView alloc] init];
        _tipImageView.contentMode = UIViewContentModeScaleAspectFit;
        [_tipImageView setImage:[UIImage imageNamed:DWQVideoPlayerImageName(@"progress_left")]];
    }
    return _tipImageView;
}

- (UILabel *)tipLabel {
    
    if (!_tipLabel) {
        _tipLabel = [[UILabel alloc]init];
        _tipLabel.font = [UIFont systemFontOfSize:13];
        _tipLabel.textColor = [UIColor whiteColor];
        _tipLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _tipLabel;
}

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.5];
        
        [self addSubview:self.tipImageView];
        [self.tipImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(12.5);
            make.width.mas_equalTo(45);
            make.height.mas_equalTo(25);
            make.centerX.equalTo(self);
        }];
        
        [self addSubview:self.tipLabel];
        [self.tipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(_tipImageView.mas_bottom);
            make.width.mas_equalTo(120);
            make.height.mas_equalTo(20);
            make.centerX.equalTo(self);
        }];
    }
    return self;
}

- (void)setTipImageViewImage:(UIImage *)image {
    
    self.tipImageView.image = image;
}

- (void)setTipLabelText:(NSString *)text {
    
    self.tipLabel.text = text;
}


@end
