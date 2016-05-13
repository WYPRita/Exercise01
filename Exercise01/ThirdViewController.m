//
//  ThirdViewController.m
//  Exercise01
//
//  Created by wxweven on 16/4/22.
//  Copyright © 2016年 wxweven. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加返回上一级按钮
    UIBarButtonItem *leftBarBtn = [[UIBarButtonItem alloc] initWithTitle:@"返回上一级" style:UIBarButtonItemStylePlain target:self action:@selector(leftBarBtnClicked:)];
    self.navigationItem.leftBarButtonItem = leftBarBtn;
}


- (void)leftBarBtnClicked:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

//点击"返回A页面"按钮
- (IBAction)buttonPressed:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
