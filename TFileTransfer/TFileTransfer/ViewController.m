//
//  ViewController.m
//  TFileTransfer
//
//  Created by jiahui on 2017/5/11.
//  Copyright © 2017年 Jiahui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIDocumentInteractionControllerDelegate>

@property (nonatomic, strong) UIDocumentInteractionController *documentController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSURL *filePath = [NSURL fileURLWithPath:path];
    _documentController = [UIDocumentInteractionController interactionControllerWithURL:[[NSBundle mainBundle] URLForResource:@"CityName" withExtension:@"plist"]];
    _documentController.delegate = self;

    self.documentController.UTI = @"public.plist";
    self.documentController.name = @"共享文件";
//    BOOL b = [_documentController presentPreviewAnimated:YES];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendAction:(UIButton *)sender {
    
    [self presentOptionsMenu];
}


- (void)presentOptionsMenu
{
    // display third-party apps as well as actions, such as Copy, Print, Save Image, Quick Look
    [_documentController presentOptionsMenuFromRect:self.view.bounds inView:self.view animated:YES];
}

- (BOOL)presentOpenInMenuFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated {
    return YES;
}


#pragma mark UIDocumentInteractionControllerDelegate
- (UIViewController *)documentInteractionControllerViewControllerForPreview:(UIDocumentInteractionController *)controller
{
    return self;
}

@end
