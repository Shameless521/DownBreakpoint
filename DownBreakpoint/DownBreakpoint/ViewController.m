//
//  ViewController.m
//  DownBreakpoint
//
//  Created by hkqx on 2018/2/5.
//  Copyright © 2018年 hkqx. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Hash.h"
#import "DownLoadManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeSystem)];
    [button setFrame:CGRectMake(100, 100, 100, 100)];
    [button setBackgroundColor:[UIColor redColor]];
    [button addTarget:self action:@selector(start) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:button];
}

/**
 * 开始下载
 */
- (void)start{
    // 启动任务
    NSString * downLoadUrl =  @"http://audio.xmcdn.com/group11/M01/93/AF/wKgDa1dzzJLBL0gCAPUzeJqK84Y539.m4a";
    
    [[DownLoadManager sharedInstance]downLoadWithURL:downLoadUrl progress:^(float progress) {
        NSLog(@"1###%f",progress);
        
    } success:^(NSString *fileStorePath) {
        NSLog(@"2###%@",fileStorePath);
        
    } faile:^(NSError *error) {
        NSLog(@"3###%@",error.userInfo[NSLocalizedDescriptionKey]);
    }];
}
/**
 * 暂停下载
 */
- (void)pause {
    [[DownLoadManager sharedInstance]stopTask];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
