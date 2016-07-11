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
    int arr[] = {25,24,15,4,67};
    BubbleSort2(arr, 5);
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

void swap2(int &left , int &right)
{
    int tmp = left;
    left = right;
    right = tmp;
}

void swap3(int &left , int &right)
{
    if (&left != &right) {
        left ^= right;
        right ^= left;
        left ^= right;
    }
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

void BubbleSort2(int arr[] , int num)
{
    int k = num;
    int j;
    bool flag = true;
    while (flag) {
        flag = false;
        for (j = 1; j < k; j++) {
            if (arr[j - 1] > arr[j]) {
                swap1(&arr[j - 1], &arr[j]);
                flag = true;
            }
        }
        k--;
    }
}



@end
