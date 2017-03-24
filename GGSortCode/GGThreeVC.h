//
//  GGThreeVC.h
//  GGSortCode
//
//  Created by dujia on 22/03/2017.
//  Copyright © 2017 dujia. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol GGThreeVCDelegate <NSObject>

- (void)testDelegate1;

@end

@interface GGThreeVC : UIViewController
@property (nonatomic , strong) id delegate;
@end
