//
//  ViewController.h
//  InPut App
//
//  Created by jiahui on 2017/5/11.
//  Copyright © 2017年 Jiahui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, copy) NSString *path;

- (void)presentViewWithUrl:(NSString *)urlStr;

@end

