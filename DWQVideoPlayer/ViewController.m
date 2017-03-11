//
//  ViewController.m
//  DWQVideoPlayer
//
//  Created by 杜文全 on 16/2/24.
//  Copyright © 2016年 com.sdzw.duwenquan. All rights reserved.
//

#import "ViewController.h"
#import "DWQVideoPlayer.h"
#define screen_Width [UIScreen mainScreen].bounds.size.width
#define screen_Height [UIScreen mainScreen].bounds.size.height
@interface ViewController ()
@property (nonatomic, strong) DWQVideoPlayer *videoPlayer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.frame];
    
    imageView.image = [UIImage imageNamed:@"杜文全背景"];
    
    [self.view addSubview:imageView];

    UIButton *benBT=[[UIButton alloc]initWithFrame:CGRectMake(20,screen_Height-100 , screen_Width/2-40, 30)];
    
    benBT.backgroundColor=[UIColor greenColor];
    [benBT setTitle:@"播放本地视频" forState:UIControlStateNormal];
    [benBT setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    [imageView addSubview:benBT];
    
    imageView.userInteractionEnabled=YES;
    UIButton *wangluoBT=[[UIButton alloc]initWithFrame:CGRectMake(CGRectGetMaxX(benBT.frame)+40,screen_Height-100 , screen_Width/2-40, 30)];
    
    wangluoBT.backgroundColor=[UIColor yellowColor];
    [wangluoBT setTitle:@"播放网络视频" forState:UIControlStateNormal];
    [wangluoBT setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    [imageView addSubview:wangluoBT];

    [benBT addTarget:self action:@selector(bendi:) forControlEvents:UIControlEventTouchUpInside];
    
    [wangluoBT addTarget:self action:@selector(wangluo:) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)showVideoPlayer:(NSURL*)url {
    
    UIView *playerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, screen_Width , 260)];
   // playerView.center = self.view.center;
    [self.view addSubview:playerView];
    _videoPlayer = [DWQVideoPlayer playerWithVideoURL:url playerView:playerView playerSuperView:playerView.superview];
    _videoPlayer.videoName = @"iOS高级工程师杜文全";
    _videoPlayer.playerEndAction = DWQVideoPlayerEndActionStop;
    
    
    [_videoPlayer play];
}

- (IBAction)bendi:(id)sender {
    NSLog(@"我点击了吗");
    self.videoURL = [[NSBundle mainBundle] URLForResource:@"iPhone7" withExtension:@"mp4"];
   [self showVideoPlayer:self.videoURL];
    
}
- (IBAction)wangluo:(id)sender {
    
    
    self.videoURL = [NSURL URLWithString:@"https://hximgtest.acool.pro/uploads/video/jinghuahezi.mp4"];
    [self showVideoPlayer:self.videoURL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
