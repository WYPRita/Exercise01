//
//  SecondViewController.m
//  Exercise01
//
//  Created by wxweven on 16/4/22.
//  Copyright © 2016年 wxweven. All rights reserved.
//


#import "SecondViewController.h"
#import "MainViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加返回上一级按钮
    UIBarButtonItem *leftBarBtn = [[UIBarButtonItem alloc] initWithTitle:@"返回上一级" style:UIBarButtonItemStylePlain target:self action:@selector(leftBarBtnClicked:)];
    self.navigationItem.leftBarButtonItem = leftBarBtn;
    
}

- (void)leftBarBtnClicked:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}


//点击"进入C页面"按钮
- (IBAction)buttonPressed:(id)sender {
    
    ThirdViewController *third = [[ThirdViewController alloc] init];
    
    [self.navigationController pushViewController:third animated:true];
}


@end
