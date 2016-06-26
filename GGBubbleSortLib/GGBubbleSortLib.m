//
//  GGBubbleSortLib.m
//  GGBubbleSortLib
//
//  Created by dujia on 16/6/26.
//  Copyright © 2016年 dujia. All rights reserved.
//

#import "GGBubbleSortLib.h"

@implementation GGBubbleSortLib
+ (void)startTest
{
    int arr[] = {25,24,15,54,67};
    BubbleSort1(arr, 5);
    for (int i = 0; i < 5; i++) {
        NSLog(@"%d",arr[i]);
    }
}

void swap1(int *left , int *right)
{
    int tmp = *left;
    *left = *right;
    *right = tmp;
}

void BubbleSort1(int arr[], int num)
{
    int i , j;
    for (i = 0; i < num; i++) {
        for (j = 1; j < num - 1; j++) {
            if (arr[j - 1] > arr[j]) {
                swap1(&arr[j - 1], &arr[j]);
            }
        }
    }
}




@end
