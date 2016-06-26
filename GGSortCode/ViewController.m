//
//  ViewController.m
//  GGSortCode
//
//  Created by dujia on 16/6/26.
//  Copyright © 2016年 dujia. All rights reserved.
//

#import "ViewController.h"
#import "GGBubbleSortLib.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [GGBubbleSortLib startTest];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
