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
    int arr[] = {25,24,15,4,3,2};
    ShellSort(arr, 6);
    for (int i = 0; i < 6; i++) {
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


void BubbleSort1(int arr[] , int num)
{
    int i , j;
    for (i = 0; i < num; i++) {
        for (j = 1; j < num; j++) {
            if (arr[j - 1] > arr[j]) {
                swap1(&arr[j - 1], &arr[j]);
            }
        }
    }
}

void BubbleSort2(int arr[] ,int num)
{
    int k = num;
    int j = 0;
    bool flag = true;
    int count = 1;
    while (flag) {
        flag = false;
        for (j = 1; j < k ; j++) {
            if (arr[j - 1] > arr[j]) {
                swap1(&arr[j - 1], &arr[j]);
                flag = true;
            }
            count++;
        }
        k--;
    }
    NSLog(@"%d",count);
}

void BubbleSort3(int arr[] , int num)
{
    int k , j;
    int flag = num;
    int count = 1;
    while (flag ) {
        k = flag;
        flag = 0;
        for (j = 1; j < k; j++) {
            if (arr[j - 1] > arr[j]) {
                swap1(&arr[j - 1], &arr[j]);
                flag = j;
            }
            count++;
        }
    }
    NSLog(@"%d",count);
}

void InsertionSort(int arr[] , int num)
{
    int i , j;
    int tmp;
    
    for (i = 1; i < num; i++) {
        tmp = arr[i];
        for (j = i; j > 0 && arr[j -1] > tmp; j--) {
            arr[j] = arr[j -1];
        }
        arr[j] = tmp;
    }
}

void ShellSort(int arr[] , int num)
{
    int i , j , k , temp;
    for (k = num / 2; k > 0; k /= 2) {
        for (i = k; i < num; i++) {
            temp = arr[i];
            for (j = i; j >= k; j -= k) {
                if (arr[j - k] > temp) {
                    arr[j] = arr[j - k];
                }else{
                    break;
                }
            }
            arr[j] = temp;
        }
    }
}

void SelectSort(int arr[] , int num)
{
    int i , j , Mindex;
    for (i = 0; i < num; i++) {
        Mindex = i;
        for (j = i; j < num; j++) {
            if (arr[j] < arr[Mindex]) {
                Mindex = j;
            }
        }
        swap1(&arr[i], &arr[Mindex]);
    }
}

















@end
