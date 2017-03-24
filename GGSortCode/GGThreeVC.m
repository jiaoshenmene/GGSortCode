//
//  GGThreeVC.m
//  GGSortCode
//
//  Created by dujia on 22/03/2017.
//  Copyright © 2017 dujia. All rights reserved.
//

#import "GGThreeVC.h"
//#import <PTFakeTouch/PTFakeTouch.h>

typedef void(^myBlock)(void);
@interface GGThreeVC()
@property (nonatomic , strong)NSTimer *timer;
@property (nonatomic , copy) myBlock blk;;
@end


@implementation GGThreeVC
- (void)dealloc
{
    NSLog(@"GGThreeVC dealloc");
}
- (void)viewDidLoad
{
    NSLog(@"GGThreeVC viewDidLoad");
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *btn_pop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn_pop.frame = CGRectMake(50, 260, 100, 100);
    [btn_pop setTitle:@"pop" forState:UIControlStateNormal];
    [btn_pop setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn_pop addTarget:self action:@selector(popvc) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn_pop];
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTime:)  userInfo:nil repeats:YES];
    GGThreeVC * __weak tmp = self;
    _blk = ^{
//        NSLog(@"self = %@",self);
        [tmp method1];
        
    };
//    NSArray *array = @[@"f",@"ff"];
//    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        [self method1];
//    }];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [_timer invalidate];
    _timer = nil;
}
- (void)updateTime:(id)time
{
    
//    NSInteger pointId = [PTFakeMetaTouch fakeTouchId:[PTFakeMetaTouch getAvailablePointId] AtPoint:CGPointMake(100,100) withTouchPhase:UITouchPhaseBegan];
//    [PTFakeMetaTouch fakeTouchId:pointId AtPoint:CGPointMake(100,100) withTouchPhase:UITouchPhaseEnded];
    
    [self.delegate method1];
    NSLog(@"updateTime");
}


- (void)popvc
{
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)method1
{
    NSLog(@"method1");
}
@end
