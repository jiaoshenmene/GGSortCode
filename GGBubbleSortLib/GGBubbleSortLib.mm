//
//  GGBubbleSortLib.m
//  GGBubbleSortLib
//
//  Created by dujia on 16/6/26.
//  Copyright © 2016年 dujia. All rights reserved.
//

#import "GGBubbleSortLib.h"
#import <vector>

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





void quickSort99(int arr[] , int l , int r)
{
    if (l < r) {
        int i = l , j = r , temp = arr[l];
        
        while (i < j) {
            while (i < j && arr[j] > temp) {
                j--;
            }
            if (i < j) {
                arr[i++] = arr[j];
            }
            while (i < j && arr[i] < temp) {
                i++;
            }
            if (i < j) {
                arr[j--] = arr[i];
            }
        }
        arr[i] = temp;
        quickSort99(arr, l, i - 1);
        quickSort99(arr, i + 1, r);
    }
}

void selectSort991(int arr[] , int n)
{
    int i , j , mindex;
    for (i = 0; i < n; i++) {
        mindex = i;
        for (j = i + 1; j < n; j++) {
            if ( arr[j] < arr[mindex]) {
               mindex = j;
            }
            
        }
        if (i != mindex) {
            swap1(&arr[i], &arr[mindex]);
        }
    }
}

void insertSort991(int arr[] , int n)
{
    int i , j , temp;
    for (i = 1; i < n; i++) {
        temp = arr[i];
        for (j = i; j > 0 && arr[j - 1] > temp; j--) {
            arr[j] = arr[j - 1];
        }
        arr[j] = temp;
    }
}

void shellSort991(int arr[] , int n)
{
    int i , j , increment , temp;
    for (increment = n / 2; increment > 0; increment /= 2) {
        for (i = increment; i < n; i++) {
            temp = arr[i];
            for (j = i; j >= increment && arr[j - increment] > temp; j -= increment) {
                arr[j] = arr[j - increment];
            }
            arr[j] = temp;
        }
    }
}

void BubbleSort991(int arr[] , int n)
{
    int j  , flag , k;
    flag = n;
    while (flag) {
        k = flag;
        flag = 0;
        for (j = 1; j < k; j++) {
            if (arr[j - 1] > arr[j]) {
                swap1(&arr[j], &arr[j - 1]);
                flag = j;
            }
        }
    }
    
}

void quickSort16310(int arr[] , int l , int r)
{
    if (l < r) {
        int i= l , j = r , temp = arr[i];
        while (i < j) {
            while (i < j && arr[j] > temp) {
                j--;
            }
            if (i < j) {
                arr[i++] = arr[j];
                
            }
            
            while (i < j && arr[i] < temp) {
                i++;
            }
            if (i < j) {
                arr[j--] = arr[i];
            }
        }
        arr[i] = temp;
        for (int i = 0; i < 7; i++) {
            printf("%d,",arr[i]);
        }
        printf("\n");
        quickSort16310(arr, l, i - 1);
        quickSort16310(arr, i + 1, r);
    }
}


void ShellSort16310(int arr[] , int n)
{
    int i , j , increment , temp;
    for (increment = n / 2; increment > 0; increment /= 2) {
        for (i = increment; i < n; i++) {
            temp = arr[i];
            for (j = i; j >= increment && arr[j - increment] > temp; j -= increment) {
                arr[j] = arr[j - increment];
            }
            arr[j] = temp;
        }
    }
}


void SelectSort16310(int arr[] , int n)
{
    int i , j , mindex;
    for (i = 0; i < n; i++) {
        mindex = i;
        for (j = i + 1; j  < n ; j++) {
            if (arr[j] < arr[mindex]) {
                mindex = j;
            }
            
        }
        if (i != mindex) {
            swap1(&arr[i], &arr[mindex]);
        }
    }
}

void InsertSort16310(int arr[] , int n)
{
    int i , j , temp;
    for (i = 1; i < n; i++) {
        temp = arr[i];
        for (j = i; j > 0 && arr[j - 1] > temp; j--) {
            arr[j] = arr[j - 1];
        }
        arr[j] = temp;
    }
}

void BubbleSort16310(int arr[] , int n)
{
    int j , flag , k;
    flag = n;
    while (flag) {
        k = flag;
        flag = 0;
        for (j = 1; j < k ; j++) {
            if (arr[j - 1] > arr[j]) {
                swap1(&arr[j - 1], &arr[j]);
                flag = j;
            }
        }
    }
}





void quickSort12(int arr[] , int l , int r)
{
    if (l < r) {
        int i = l , j = r , temp = arr[i];
        while (i < j) {
            while (i < j && temp < arr[j]) {
                j--;
            }
            if (i < j) {
                arr[i++] = arr[j];
            }
            
            while (i < j && temp > arr[i]) {
                i++;
            }
            if (i < j) {
                arr[j--] = arr[i];
            }
        }
        arr[i] = temp;
        quickSort12(arr, l, i - 1);
        quickSort12(arr, i + 1, r);
    }
}

void insertSort(int arr[] , int n)
{
    int i , j , temp;
    for (i = 1; i < n; i++) {
        temp = arr[i];
        for (j = i; j > 0 && arr[j - 1] > temp; j--) {
            arr[j] = arr[j - 1];
        }
        arr[j] = temp;
    }
}

void selectSort(int arr[] , int n)
{
    int i , j , mindex;
    for (i = 0; i < n; i++) {
        mindex = i;
        for (j = i + 1; j < n; j++) {
            if (arr[j] < arr[mindex]) {
                mindex = j;
            }
        }
        if (mindex != i) {
            swap1(&arr[i], &arr[mindex]);
        }
    }
}

void shellSort(int arr[] , int n)
{
    int i , j , increment ,temp;
    for (increment = n / 2; increment > 0; increment /= 2) {
        for (i = increment; i < n; i++) {
            temp = arr[i];
            for (j = i; j >= increment && arr[j - increment] > temp; j -= increment) {
                arr[j] = arr[j -increment];
            }
            arr[j] = temp;
        }
    }
}

void bubbleSort(int arr[] , int n)
{
    int j , flag , k ;
    flag = n;
    while (flag) {
        k = flag;
        flag = 0;
        for (j = 1; j < k; j++) {
            if (arr[j] < arr[j - 1]) {
                swap1(&arr[j], &arr[j - 1]);
                flag =  j;
            }
        }
    }
}




@implementation GGBubbleSortLib
+ (void)startTest
{
    int arr[] = {25,24,1,14,3,9,13};
//    quickSort12(arr,0 , 6);
    bubbleSort(arr, 7);
    for (int i = 0; i < 7; i++) {
        printf("%d,",arr[i]);
    }
    printf("\n");
}






void ShellSort44(int arr[] , int num)
{
    int i , j , increment , temp ;
    for (increment = num / 2; increment > 0; increment /= 2) {
        for (i = increment; i < num; i++) {
            temp = arr[i];
            for (j = i; j >= increment && arr[j - increment] > temp; j -= increment) {
                arr[j] = arr[j - increment];
            }
            arr[j] = temp;
        }
    }
}



void InsertSort44(int arr[] , int num)
{
    int i , j , temp ;
    for (i = 1; i < num; i++) {
        temp = arr[i];
        for (j = i; j > 0 && arr[j - 1] > temp; j--) {
            arr[j] = arr[j - 1];
        }
        arr[j] = temp;
    }
}

void SelectSort44(int arr[] , int num)
{
    int i , j ,mindex;
    for (i = 0; i < num; i++) {
        mindex = i;
        for (j = i + 1; j < num; j++) {
            if (arr[j] < arr[mindex]) {
                mindex = j;
            }
        }
        if (i != mindex) {
            swap1(&arr[i], &arr[mindex]);
        }
    }
    
}




void BubbleSort44(int arr[] , int num)
{
    int j , k , flag;
    flag = num;
    while (flag) {
        k = flag;
        flag = 0;
        for (j = 1; j < k; j++) {
            if (arr[j - 1] > arr[j])  {
                swap1(&arr[j - 1], &arr[j]);
                flag = j;
            }
        }
    }
}

















void InsertSort22(int arr[] , int num)
{
    int i , j , temp;
    for (i = 1; i < num; i++) {
        temp = arr[i];
        for (j = i; j >0 && arr[j - 1] > temp; j--) {
            arr[j] = arr[j - 1];
        }
        arr[j] = temp;
    }
    
}

void ShellSort22(int arr[] , int num)
{
    int i , j , increment , temp;
    for (increment = num / 2; increment > 0; increment /= 2) {
        for (i = increment; i < num; i++) {
            temp = arr[i];
            for (j = i; j >= increment && arr[j - increment] > temp; j -= increment) {
                arr[j] = arr[j - increment];
            }
            arr[j] = temp;
        }
    }
}







void BubbleSort1(int arr[] , int num)
{
    for (int i = 0; i < 7; i++) {
        printf("%d ",arr[i]);
    }
    printf("\n");
    int i , j;
    for (i = 0; i < num; i++) {
        for (j = 1; j < num - i; j++) {
            if (arr[j - 1] > arr[j]) {
                swap1(&arr[j - 1], &arr[j]);
            }
            for (int i = 0; i < 7; i++) {
                printf("%d ",arr[i]);
            }
            printf("\n");
        }
        printf("\n");
    }
}



void BubbleSort2(int arr[] ,int num)
{
    int k = num;
    bool flag = true;
    int j ;
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

















void InsertionSort1(int arr[] , int num)
{
    int i , j ;
    int temp ;
    
    for (i = 1; i < num; i++) {
        temp = arr[i];
        for (j = i; j > 0 && arr[j - 1] > temp; j--) {
            arr[j] = arr[j - 1];
        }
        arr[j] = temp;
    }
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

void ShellSort1(int arr[] , int num)
{
    int i , j , k , temp;
    for (k = num / 2; k > 0; k /= 2) {
        for (i = k; i < num; i++) {
            
        }
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




void SelectSort1(int arr[] , int num)
{
    int i , j , mindex;
    for (i = 0 ; i < num; i++) {
        mindex = i;
        for (j = i + 1; j < num; j++) {
            if (arr[j] < arr[mindex]) {
                mindex = j;
            }
        }
        swap1(&arr[i], &arr[mindex]);
    }
    
}



/* 简单选择排序(simple selection sort) 就是通过n-i次关键字之间的比较,从n-i+1
 * 个记录中选择关键字最小的记录,并和第i(1<=i<=n)个记录交换之
 * 尽管与冒泡排序同为O(n^2),但简单选择排序的性能要略优于冒泡排序 */

void SelectSort(int arr[] , int num)
{
    int i , j , mindex;
    for (i = 0; i < num; i++) {
        mindex = i;
        for (j = i+ 1; j < num; j++) {
            if (arr[j] < arr[mindex]) {
                mindex = j;
            }
        }
        swap1(&arr[i], &arr[mindex]);
    }
}















/********************************************************************************/
/*假设初始序列含有n个记录,则可以看成n个有序的子序列,每个子序列的长度为1,然后
 * 两两归并,得到(不小于n/2的最小整数)个长度为2或1的有序子序列,再两两归并,...
 * 如此重复,直至得到一个长度为n的有序序列为止,这种排序方法称为2路归并排序
 * 时间复杂度为O(nlogn),空间复杂度为O(n+logn),如果非递归实现归并,则避免了递归时深度为logn的栈空间
 * 空间复杂度为O(n) */


/*lpos is the start of left half, rpos is the start of right half*/
void merge(int a[], int tmp_array[], int lpos, int rpos, int rightn)
{
    int i , leftn , num_elements , tmpos;
    leftn = rpos -1;
    tmpos = lpos;
    num_elements = rightn - lpos + 1;
    
    while (lpos <= leftn && rpos <= rightn) {
        if (a[lpos] <= a[rpos]) {
            
        }
    }
}


void msort(int a[], int tmp_array[], int left, int right)
{
    int center;
    
    if (left < right)
    {
        center = (right + left) / 2;
        
        msort(a, tmp_array, left, center);
        NSLog(@"left = %d , right = %d , center = %d",left,right , center);
        msort(a, tmp_array, center + 1, right);
//        merge(a, tmp_array, left, center + 1, right);
    }
}



void merge_sort(int a[], int n)
{
    int *tmp_array;
    tmp_array = (int *)malloc(n * sizeof(int));
    
    if (tmp_array != NULL)
    {
        msort(a, tmp_array, 0, n - 1);
        free(tmp_array);
    }
    
    else
        printf("No space for tmp array!\n");
}




















@end
