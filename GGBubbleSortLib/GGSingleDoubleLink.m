//
//  GGSingleDoubleLink.m
//  GGSortCode
//
//  Created by dujia on 16/03/2017.
//  Copyright © 2017 dujia. All rights reserved.
//

#import "GGSingleDoubleLink.h"

//typedef struct _SingleLink {
//    int data;
//    void *np;
//}SingleLink;
//
//SingleLink *create(int data)
//{
//    SingleLink * link = (SingleLink *)malloc(sizeof(SingleLink));
//    link->np = NULL;
//}

#include <stdio.h>
#include <stdlib.h>

#define OK 1
#define ERROR 0

typedef int Status;

typedef struct DLink
{
    int data;
    unsigned long link;
} DLink;

// Initialize a SPDLL
Status CreateList(DLink **L, DLink **R, int *Elements, int n);
// Traverse from Left to Right
Status DispL(DLink *L);
// Traverse from Right to Left
Status DispR(DLink *R);


// Initialize a SPDLL
Status CreateList(DLink **L, DLink **R, int *Elements, int n)
{
    DLink *pre, *q;
    int i;
    unsigned long l = 0, r = 0;
    
    // L 是指向头结点的指针
    (*L) = (DLink *)malloc(sizeof(DLink));
    (*L)->data = Elements[0];
    
    pre = *L;
    for (i=1; i<n; i++)
    {
        // 这是生成的新节点
        q = (DLink *)malloc(sizeof(DLink));
        // 为新节点的数据域赋值
        q->data = *(Elements+i);
        /* l 为 pre 前驱节点的指针地址经强制转换的长整型值，
         q 为 pre 的后继节点的地址，
         因此将 l ^ (unsigned long)q 赋值给 pre 的指针域 */
        pre->link = l ^ (unsigned long)q;
        // 然后将分别将 l 与 pre 向前移动一个身位 :D
        l = (unsigned long)pre;
        pre = q;
    }
    // 最后，再将末尾节点的指针域赋值为次末尾节点与0的异或值即可
    pre->link = (unsigned long)l ^ r;
    /* R 是指向末尾节点的指针，如果要从右向左遍历这个链表的话，
     需要从尾指针开始，因此每个单指针双向非循环链表都需要一个头指针和尾指针 */
    (*R) = pre;
    return OK;
}


void createLink(DLink **L , DLink **R , int *Elements , int n)
{
    DLink *pre , *q;
    int i;
    unsigned long l = 0 , r = 0;
    
    (*L) = (DLink *)malloc(sizeof(DLink));
    (*L)->data = Elements[0];
    
    pre = *L;
    
    for (i = 1; i < n; i++) {
        q = (DLink *)malloc(sizeof(DLink));
        q->data = Elements[i];
        
        pre->link = l ^ (unsigned long)q;
        l = (unsigned long)pre;
        pre = q;
    }
    
    pre->link = (unsigned long) l ^ r;
    (*R) = pre;
    
}










void createLink1(DLink **L , DLink **R , int *Elements , int n)
{
    DLink *pre = NULL , *q = NULL;
    int i = 0;
    unsigned long l = 0 , r = 0;
    
    (*L) = (DLink *)malloc(sizeof(DLink));
    (*L)->data = Elements[i];
    
    pre = (*L);
    for (i = 1; i < n; i++) {
        q = (DLink *)malloc(sizeof(DLink));
        q->data = Elements[i];
        
        pre->link = l ^ (unsigned long)q;
        l = (unsigned long)pre;
        pre = q;
    }
    pre->link = l ^ r;
    (*R) = pre;
    
}




void dl(DLink *L)
{
    DLink *p = L;
    unsigned long l = 0 , next;
    printf("%d",p->data);
    
    while (1) {
        next = l ^ p->link;
        l = (unsigned long)p;
        
        if (next == 0) {
            break;
        }
        p = (DLink *)next;
        
        printf(",%d",p->data);
    }
}










// Traverse from Left to Right
Status DispL(DLink *L)
{
    unsigned long l = 0, next;
    DLink *p = L;
    // 首先将首节点的值直接输出
    printf("%d ", p->data);
    while (1)
    {
        // 由当前节点 p 的前驱节点与 p 的指针域异或得到下一个节点的地址
        next = l ^ ((unsigned long)(p->link));
        l = (unsigned long)p;
        if (next == 0) break;
        p = (DLink *)next;
        printf("%d ", p->data);
    }
    return OK;
}

// Traverse from Right to Left
// 从右往左遍历，需要从尾指针开始，因此每个单指针双向非循环链表都需要一个头指针和尾指针
Status DispR(DLink *R)
{
    unsigned long r = 0, prior;
    DLink *p = R;
    printf("%d ", p->data);
    while (1)
    {
        prior = ((unsigned long)(p->link)) ^ r;
        r = (unsigned long)p;
        if (prior == 0) break;
        p = (DLink *)prior;
        printf("%d ", p->data);
    }
    return OK;
}





@implementation GGSingleDoubleLink
+ (void)startLink
{
    DLink *L, *R;
    int Elements[] = {1, 2, 3, 4, 5};
    createLink1(&L, &R, Elements, 5);
    printf("Traverse from Left to Right: ");
    dl(L);
//    printf("\n");
//    printf("Traverse from Right to Left: ");
//    DispR(R);
//    printf("\n");
}
@end
