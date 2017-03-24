//
//  ViewController.m
//  GGSortCode
//
//  Created by dujia on 16/6/26.
//  Copyright © 2016年 dujia. All rights reserved.
//

#import "ViewController.h"
#import "GGBubbleSortLib.h"
#import "StringStudy.h"

#import "GGLinkNode.h"
#import "GGDoubleLink.h"

#import "GGSortCode-Swift.h"

#import "GGSingleDoubleLink.h"
#import "GGTwoVC.h"


@interface ViewController ()
@property (nonatomic , strong) GGTwoVC *twovc;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _twovc = [[GGTwoVC alloc] init];
//    _twovc.delegate = self;
    
    
//    self.view.backgroundColor = [UIColor whiteColor];
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    btn.frame = CGRectMake(50, 50, 100, 100);
//    [btn setTitle:@"go" forState:UIControlStateNormal];
//    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
//    [btn addTarget:self action:@selector(gotwoVC) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn];
    
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSArray *array = [LeetCodeSort twoSum:@[@(3),@(2),@(4)] :6];
//    NSLog(@"%@",array);
    
//    [LeetCodeSort example];
//    [GGBubbleSortLib startTest];
    
//    [GGLinkNode startLink];
    
//    [GGDoubleLink startLink];
    
    [GGSingleDoubleLink startLink];
//    dispatch_async(dispatch_get_global_queue(0, 0), ^{
//        NSLog(@"=================1");
//        dispatch_sync(dispatch_get_main_queue(), ^{
//            NSLog(@"=================2"); });
//        NSLog(@"=================3"); });
    
//    [StringStudy startString];
//    
//    UIImage *image = [UIImage imageNamed:@"jg0.png"];
//    [image resizableImageWithCapInsets:UIEdgeInsetsMake(13.3333333, 14, 14, 14) resizingMode:UIImageResizingModeStretch];
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, 52, 52)];
//    imageView.backgroundColor = [UIColor redColor];
//    imageView.image = image;
//    [self.view addSubview:imageView];
}

- (void)gotwoVC
{
    
    
    [self.navigationController pushViewController:_twovc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
