//
//  GGTwoVC.m
//  GGSortCode
//
//  Created by dujia on 22/03/2017.
//  Copyright © 2017 dujia. All rights reserved.
//

#import "GGTwoVC.h"
#import "GGThreeVC.h"
@interface GGTwoVC()
@property (nonatomic , strong) GGThreeVC *thirdvc;

@end

@implementation GGTwoVC

- (void)dealloc
{
    NSLog(@"GGTwoVC dealloc");
}
- (void)viewDidLoad
{
    NSLog(@"GGTwoVC viewDidLoad");
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _thirdvc = [[GGThreeVC alloc] init];
    _thirdvc.delegate = self;
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(50, 50, 100, 100);
    [btn setTitle:@"go" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(gotwoVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    
    UIButton *btn_pop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn_pop.frame = CGRectMake(50, 260, 100, 100);
    [btn_pop setTitle:@"pop" forState:UIControlStateNormal];
    [btn_pop setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn_pop addTarget:self action:@selector(popvc) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn_pop];
    
//    NSArray *array = @[@"f",@"ff"];
//    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        [self method1];
//    }];
}
- (void)popvc
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)gotwoVC
{
    
    GGThreeVC *thirdvc = [[GGThreeVC alloc] init];
    thirdvc.delegate = self;
    self.delegate = thirdvc;
    [self.navigationController pushViewController:thirdvc animated:YES];
}
- (void)method1
{
    NSLog(@"GGTwoVC method1");
}
@end
