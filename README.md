# DWQVideoPlayer
一款超级好用的基于AVPlayer的视频播放器
##DWQVideoPlayer
DWQVideoPlayer是基于AVPlayer进行的一定以封装，包含了以下功能：
- 1.自定义播放界面。提供播放，暂停，全屏等功能。提供播放进度条，加载进度条等。

- 2.向上或向下滑动屏幕的左侧以调整亮度。向上或向下滑动屏幕右侧可调整声音。

- 3.向左或向右滑动屏幕可调整播放进度。

##DWQVideoPlayer使用方法：

```objective-c
/**
创建一个播放器

 @param videoURL       video的URL
 @param playerView      要显示视频的视图。
 @param playerSuperView  播放器的父视图
 @return               
 */
+ (instancetype)playerWithVideoURL:(NSURL *)videoURL playerView:(UIView *)playerView playerSuperView:(UIView *)playerSuperView;

UIView *playerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, screen_Width , 260)];
   // playerView.center = self.view.center;
    [self.view addSubview:playerView];
    _videoPlayer = [DWQVideoPlayer playerWithVideoURL:url playerView:playerView playerSuperView:playerView.superview];
    _videoPlayer.videoName = @"iOS高级工程师杜文全";
    _videoPlayer.playerEndAction = DWQVideoPlayerEndActionStop;
    
    
    [_videoPlayer play];


```
####调用
1.本地视频:注意，要把视频添加到Bundle Resources中

```objective-c
 self.videoURL = [[NSBundle mainBundle] URLForResource:@"iPhone7" withExtension:@"mp4"];
   [self showVideoPlayer:self.videoURL];

```

2.网络视频:

```objective-c
 self.videoURL = [NSURL URLWithString:@"https://hximgtest.acool.pro/uploads/video/jinghuahezi.mp4"];
    [self showVideoPlayer:self.videoURL];

```
