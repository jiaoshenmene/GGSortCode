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







void createlink(DLink **L , DLink **R , int *elements , int n)
{
    DLink *p , *q = NULL ;
    unsigned long l = 0 , r = 0;
    int i = 0;
    (*L) = (DLink *)malloc(sizeof(DLink));
    (*L)->data = elements[i];
    p = (*L);
    for (i = 1; i < n; i++) {
        q = (DLink *)malloc(sizeof(DLink));
        q->data = elements[i];
        
        p->link = l ^ (unsigned long)q;
        l = (unsigned long)p;
        p = q;
    }
    q->link = l ^ r;
    (*R) = q;
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



















void printLink(DLink *link)
{
    unsigned long l = 0, prior ;
    DLink *p = link;
    printf("%d ",p->data);
    while (1) {
        prior = l ^ p->link;
        if (prior == 0) {
            break;
        }
        l = (unsigned long)p;
        p = (DLink *)prior;
        printf("%d ",p->data);
    }
}



void createLink2(DLink **L , DLink **R , int *elements ,int n)
{
    int i = 0 ;
    unsigned long l = 0 , r = 0;
    DLink *p = NULL , *q = NULL;
    (*L) = (DLink *)malloc(sizeof(DLink));
    (*L)->data = elements[i];
    p = (*L);
    
    for (i = 1; i < n; i++) {
        q = (DLink *)malloc(sizeof(DLink));
        q->data = elements[i];
        
        p->link = (unsigned long)q ^ l;
        l = (unsigned long) p;
        p = q;
    }
    p->link = l ^r;
    
    (*R) = q;
}








void createLink3(DLink **L , DLink **R , int *elements , int n)
{
    DLink *p = NULL , *q = NULL;
    unsigned long l = 0 , r = 0;
    int i = 0;
    (*L) = (DLink *)malloc(sizeof(DLink));
    (*L)->data = elements[i];
    p = (*L);
    for (i = 1; i < n; i++) {
        q = (DLink *)malloc(sizeof(DLink));
        q->data = elements[i];
        
        p->link = l ^ (unsigned long)q;
        l = (unsigned long)p;
        p = q;
    }
    q->link = l ^ r;
    (*R) = q;
}

void printLink3(DLink *L)
{
    unsigned long l = 0 , prior;
    DLink *p = L;
    printf("%d ",p->data);
    while (p) {
        prior = p->link ^ l;
        if (prior == 0) {
            break;
        }
        
        l = (unsigned long)p;
        p = (DLink *)prior;
        
        printf("%d ",p->data);
    }
    
}




void createLink34(DLink **L , DLink **R , int *elements , int n)
{
    DLink *p , *q = NULL;
    unsigned long l = 0 , r = 0;
    int i = 0;
    (*L) = (DLink *)malloc(sizeof(DLink));
    (*L)->data = elements[i];
    p = (*L);
    
    for (i = 1; i < n; i++) {
        
        q = (DLink *)malloc(sizeof(DLink));
        q->data = elements[i];
        
        p->link = l ^ (unsigned long)q;
        l = (unsigned long)p;
        p = q;
    }
    q->link = l ^ r;
    (*R) = q;
    
}









void createLink4(DLink **L , DLink **R , int *elements , int n)
{
    DLink *p = NULL , *q = NULL;
    
    int i = 0;
    unsigned long l = 0, r = 0;
    
    (*L) = (DLink *)malloc(sizeof(DLink));
    (*L)->data = elements[i];
    
    p = (*L);
    for (i = 1; i < n; i++) {
        q = (DLink *)malloc(sizeof(DLink));
        q->data = elements[i];
        
        p->link = l ^(unsigned long)q;
        l = (unsigned long)p;
        p = q;
    }
    q->link = l ^ r;
    (*R) = q;
    
}




void createLink5(DLink **L , DLink **R , int *elements , int n)
{
    DLink *p , *q = NULL;
    int i = 0;
    unsigned long l = 0 , r = 0;
    (*L) = (DLink *)malloc(sizeof(DLink));
    (*L)->data = elements[i];
    
    p = (*L);
    for (i = 1; i < n; i++){
        q = (DLink *)malloc(sizeof(DLink));
        q->data = elements[i];
        
        p->link = l ^ (unsigned long)q;
        l = (unsigned long)p;
        p = q;
    }
    q->link = l ^ r;
    (*R) = q;
}











void printLink4(DLink *L)
{
    unsigned long l = 0, prior = 0;
    DLink *p = L;
    printf("%d ",p->data);
    while (1) {
        prior = p->link ^ l;
        if (prior == 0) {
            break;
        }
        l = (unsigned long)p;
        p = (DLink *)prior;
        printf("%d ",p->data);
    }
    
}




void createLink8(DLink **L , DLink **R , int *elements,int n)
{
    DLink * p , *q = NULL;
    unsigned long l = 0 , r = 0;
    int i = 0;
    (*L) = (DLink *)malloc(sizeof(DLink));
    (*L)->data = elements[i];
    
    p = (*L);
    for (i = 1; i < n; i++) {
        q = (DLink *)malloc(sizeof(DLink));
        q->data = elements[i];
        
        p->link = l ^ (unsigned long)q;
        l = (unsigned long)p;
        p = q;
    }
    q->link = l ^ r;
    (*R) = q;
}


DLink * createNode61(int data)
{
    DLink *node = (DLink *)malloc(sizeof(DLink));
    node->data = data;
    node->link = 0;
    return node;
}



DLink * addNode61(DLink **L , int data)
{
    DLink *p = (*L);
    unsigned long l = 0 , prior = 0;
    while (1) {
        prior = p->link ^ l;
        if (prior == 0) {
            DLink *newNode = createNode61(data);
            p->link = l ^ (unsigned long)newNode;
            l = (unsigned long)p;
            
            newNode->link =  l ^ 0;
            return newNode;
            break;
        }
        l = (unsigned long)p;
        p = (DLink *)prior;
    }
}







typedef struct _Dlink1
{
    int data;
    unsigned long link;
}DLink1;

DLink1 *createDLink5(int data)
{
    DLink1 *node = (DLink1 *)malloc(sizeof(DLink1));
    node->data = data;
    node->link = 0;
    return node;
}

DLink1 *addDLink5(DLink1 **head, int data)
{
    DLink1 *p = *head;
    unsigned long l = 0 , prior = 0;
    while (1) {
        prior = p->link ^ l;
        if (prior == 0) {
            DLink1 *node = createDLink5(data);
            p->link = l ^ (unsigned long)node;
            
            l = (unsigned long)p;
            node->link = l ^ 0;
            
            return node;
        }
        l = (unsigned long)p;
        p = (DLink1 *)prior;
        
    }
}
















void printNode5(DLink1 *head)
{

    DLink1 *p = head;
    unsigned long l = 0 ,prior = 0;
    printf("%d ",p->data);
    while (1) {
        prior = p->link ^ l;
        if (prior == 0) {
            break;
        }
        l = (unsigned long) p;
        p = (DLink1 *)prior;
        printf("%d ",p->data);
    }
    
}




typedef struct _M1link1
{
    int data;
    unsigned long link;
}M1link1;


M1link1 *createM1Link(int data)
{
    M1link1 *node = (M1link1 *)malloc(sizeof(M1link1));
    node->data = data;
    node->link = 0;
    return node;
}

inline M1link1 *addM1Node(M1link1 **head , int data)
{
    
//    M1link1 *p = (*head);
//    unsigned long l = 0 , prior = 0;
//    while (1) {
//        prior = p->link ^ l;
//        if (prior == 0) {
//            M1link1 *newNode = createM1Link(data);
//            p->link = l ^ (unsigned long)newNode;
//            l = (unsigned long)p;
//            
//            newNode->link =  l ^ 0;
//            return newNode;
//            break;
//        }
//        l = (unsigned long)p;
//        p = (M1link1 *)prior;
//    }
    
    
    M1link1 *p = (*head) ;
    unsigned long l = 0 , prior = 0;
    while (1) {
        prior = p->link ^ l;
        if (prior == 0) {
            M1link1 *node = createM1Link(data);
            p->link = l ^ (unsigned long)node;
            l = (unsigned long)p;
            node->link = l ^ 0;
            return node;
        }
        l = (unsigned long)p;
        p = (M1link1 *)prior;
    }
}


inline void printM1Node(M1link1 *head)
{
    M1link1 *p = head;
    unsigned long l = 0 , prior = 0;
    printf("%d ",p->data);
    while (1) {
        prior = p->link ^ l;
        if (prior == 0) {
            break;
        }
        l = (unsigned long) p;
        p = (M1link1 *)prior;
        printf("%d ",p->data);
    }
}

@implementation GGSingleDoubleLink
+ (void)startLink
{
    M1link1 *r = NULL;
    M1link1 *h1 = createM1Link(10);
    r = addM1Node(&h1, 9);
    r = addM1Node(&h1, 4);
    
    printM1Node(h1);
    printM1Node(r);
    
//    DLink1 *head = createDLink5(10);
////
//    addDLink5(&head, 8);
//    printNode5(head);
    
    
    
    DLink *L, *R;
//    int Elements[] = {1, 2, 3, 4, 5};
//    createLink8(&L, &R, Elements, 5);
//

    
    DLink *header = createNode61(10);
    
    R = addNode61(&header, 9);
    R = addNode61(&header, 65);
    printf("Traverse from Left to Right: ");
    printLink4(header);
    printf("\n");
//    printf("Traverse from Right to Left: ");
    printLink4(R);
    printf("\n");
}
@end
