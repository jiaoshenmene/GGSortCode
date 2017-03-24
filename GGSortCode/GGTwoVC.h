//
//  GGTwoVC.h
//  GGSortCode
//
//  Created by dujia on 22/03/2017.
//  Copyright © 2017 dujia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GGThreeVC.h"

@protocol GGTwoVCDelegate  <NSObject>

- (void)ggtwo1;

@end


@interface GGTwoVC : UIViewController
@property (nonatomic , weak) id<GGThreeVCDelegate> delegate;
@end
