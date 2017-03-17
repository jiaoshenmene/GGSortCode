//
//  GGDoubleLink.m
//  GGSortCode
//
//  Created by dujia on 14/02/2017.
//  Copyright © 2017 dujia. All rights reserved.
//

#import "GGDoubleLink.h"

typedef struct _DoubleLinkNode
{
    int data;
    struct _DoubleLinkNode *next;
    struct _DoubleLinkNode *prev;
}DoubleLinkNode;

DoubleLinkNode *createDoubleNode(int data)
{
    DoubleLinkNode *node = (DoubleLinkNode *)malloc(sizeof(DoubleLinkNode));
    node->data = data;
    node->next = node;
    node->prev = node;
    return node;
}

bool addDoubleLinkNode(DoubleLinkNode **phead , int data)
{
    if (phead == NULL || *phead == NULL) {
        DoubleLinkNode *node = createDoubleNode(data);
        *phead = node;
        return true;
    }
    
    DoubleLinkNode *node = createDoubleNode(data);
    
    
    DoubleLinkNode *indexNode = (*phead)->next;
    
    if (indexNode == (*phead)) {
        node->next = (*phead);
        node->prev = (*phead);
        (*phead)->next = node;
        (*phead)->prev = node;
        return true;
    }
    while (indexNode != (*phead)) {
        indexNode = indexNode->next;
        
    }
    
    indexNode->prev->next = node;
    indexNode->prev = node;
    node->next = (*phead);
    
    node->prev = indexNode->prev;
    
    return true;
}




void printDoubleLink(DoubleLinkNode *phead)
{
    DoubleLinkNode *headNode = phead;
    DoubleLinkNode *indexNode = phead->next;
    printf("%d\n",headNode->data);
    while (headNode != indexNode) {
        printf("%d\n",indexNode->data);
        indexNode = indexNode->next;
    }
}



@implementation GGDoubleLink

+ (void)startLink
{
    DoubleLinkNode *phead = createDoubleNode(90);
    
    addDoubleLinkNode(&phead, 88);
    
    addDoubleLinkNode(&phead, 81);
    
    addDoubleLinkNode(&phead, 8);
    addDoubleLinkNode(&phead, 2);
    printDoubleLink(phead);
    
}

@end
