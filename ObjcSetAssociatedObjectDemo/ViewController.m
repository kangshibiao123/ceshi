//
//  ViewController.m
//  ObjcSetAssociatedObjectDemo
//
//  Created by kangshibiao on 16/8/2.
//  Copyright © 2016年 ZheJiangTianErRuanJian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSString * name1 = @"xx";
    
    name1.name  = @"0";
    name1.datasArr = @[@"1",@"2"];
    name1.lianJingLi = @"123";
    NSLog(@"---%@%@---%@",name1.datasArr,name1.name,name1.lianJingLi);
    
    NSArray * arr= @[];
    
    arr.name = @"数组";
    NSLog(@"----%@",arr.name);
    
    
    UIAlertView *alertView= [[UIAlertView alloc]initWithTitle:nil message:@"测试" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:@"取消", nil];
    
    
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
