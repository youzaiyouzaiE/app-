//
//  ViewController.m
//  InPut App
//
//  Created by jiahui on 2017/5/11.
//  Copyright © 2017年 Jiahui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    UILabel *_cityNameLabel;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _cityNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 220, 80)];
    _cityNameLabel.text = @"传入的信息显示";
    [self.view addSubview:_cityNameLabel];
    
    
}


- (void)presentViewWithUrl:(NSString *)urlStr {
    NSString *documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSArray *parthArray = [urlStr componentsSeparatedByString:@"/"];
    NSString *fileName = parthArray.lastObject;
    NSString *fileDocumentPath = [documentsPath stringByAppendingPathComponent:@"Inbox"];
    NSString *filePath = [fileDocumentPath stringByAppendingPathComponent:fileName];

    NSDictionary *fileDic = [NSDictionary dictionaryWithContentsOfFile:filePath];
    NSLog(@"%@",fileDic);
    NSArray *array = fileDic[@"A"];
    NSString *fristName = array.firstObject;
    _cityNameLabel.text = fristName;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
