//
//  DWQVideoLayerView.m
//  DWQVideoPlayer
//
//  Created by 杜文全 on 16/2/24.
//  Copyright © 2016年 com.sdzw.duwenquan. All rights reserved.
//

#import "DWQVideoLayerView.h"
#import <AVFoundation/AVFoundation.h>
@implementation DWQVideoLayerView

+ (Class)layerClass {
    
    return [AVPlayerLayer class];
}

@end
