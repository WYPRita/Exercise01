//
//  ViewController.m
//  Exercise01
//
//  Created by wxweven on 16/4/22.
//  Copyright © 2016年 wxweven. All rights reserved.
//

#import "MainViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //添加返回上一级按钮
    UIBarButtonItem *leftBarBtn = [[UIBarButtonItem alloc] initWithTitle:@"返回上一级" style:UIBarButtonItemStylePlain target:self action:@selector(leftBarBtnClicked:)];
    self.navigationItem.leftBarButtonItem = leftBarBtn;
    
}

- (void)leftBarBtnClicked:(id)sender
{
    ThirdViewController *third = [[ThirdViewController alloc]init];
    [self.navigationController pushViewController:third animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//点击"进入B页面"按钮
- (IBAction)buttonPressed:(id)sender {
    
    SecondViewController *second = [[SecondViewController alloc] init];
    
    [self.navigationController pushViewController:second animated:true];
}

@end
