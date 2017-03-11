//
//  DWQVideoPlayer.h
//  DWQVideoPlayer
//
//  Created by 杜文全 on 16/2/24.
//  Copyright © 2016年 com.sdzw.duwenquan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, DWQVideoPlayerState) {
    DWQVedioPlayerStateFailed,
    DWQVideoPlayerStateBuffering,
    DWQVideoPlayerStatePlaying,
    DWQVideoPlayerStatePaused,
    DWQVideoPlayerStateFinished,
    DWQVideoPlayerStateStopped
};

typedef NS_ENUM(NSInteger, DWQVideoPlayerEndAction) {
    DWQVideoPlayerEndActionStop,
    DWQVideoPlayerEndActionLoop,
    DWQVideoPlayerEndActionDestroy
};


@interface DWQVideoPlayer : NSObject
@property (nonatomic, assign, readonly) DWQVideoPlayerState playerState;

/**
 Action when video play to end, default is DWQVideoPlayerEndActionStop.
 */
@property (nonatomic, assign) DWQVideoPlayerEndAction playerEndAction;

/**
 The name of the video which will play.
 */
@property (nonatomic, copy) NSString *videoName;

/**
 Create a DWQVideoPlayer object with videoURL, playerView and playerSuperView.
 
 @param videoURL        The URL of the video.
 @param playerView      The view which you want to display the video.
 @param playerSuperView PlayerView's super view.
 @return                A DWQVideoPlayer object
 */
+ (instancetype)playerWithVideoURL:(NSURL *)videoURL playerView:(UIView *)playerView playerSuperView:(UIView *)playerSuperView;

- (void)play;

- (void)pause;

- (void)resume;

- (void)destroyPlayer;


@end
