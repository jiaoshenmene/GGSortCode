//
//  GGLinkNode.m
//  GGSortCode
//
//  Created by dujia on 14/02/2017.
//  Copyright © 2017 dujia. All rights reserved.
//

#import "GGLinkNode.h"

//typedef struct _LinkNode
//{
//    int data;
//    struct _LinkNode *next;
//}LinkNode;
//
//LinkNode *createNode(int data)
//{
//    LinkNode *node = (LinkNode *)malloc(sizeof(LinkNode));
//    node->data = data;
//    node->next = NULL;
//    return node;
//}
//
//void printNode(LinkNode *node)
//{
//    LinkNode *tmp_node = node;
//    while (tmp_node) {
//        printf("%d ",tmp_node->data);
//        tmp_node = tmp_node->next;
//    }
//}
//
//bool _addNode(LinkNode **phead , int data)
//{
//    if (*phead == NULL) {
//        LinkNode *newNode = createNode(data);
//        *phead = newNode;
//        return true;
//    }
//    return _addNode(&(*phead)->next, data);
//}
//
//void addNode(LinkNode **phead , int data)
//{
//    if (phead == NULL || *phead == NULL) {
//        LinkNode *newNode = createNode(data);
//        *phead = newNode;
//        return;
//    }
//    _addNode(&(*phead)->next, data);
//}
//
//LinkNode* getNode(LinkNode *phead , int data)
//{
//    LinkNode *node = phead;
//    while (node) {
//        if (data == node->data) {
//            return node;
//            
//        }else{
//            node = node->next;
//        }
//    }
//    return NULL;
//}
//
//LinkNode* getIndexNode(LinkNode *phead, int index)
//{
//    LinkNode *node = phead;
//    int tmp_index = 0;
//    while (node) {
//        if (tmp_index == index) {
//            return node;
//        }
//        if (!node->next) {
//            return node;
//        }
//        tmp_index++;
//        node = node->next;
//        
//    }
//    return node;
//}
//
//
//int LinkNodeLength(LinkNode *phead)
//{
//    LinkNode *node = phead;
//    int length = 0;
//    while (node) {
//        node = node->next;
//        length++;
//    }
//    return length;
//}
//
//bool InsertNode(LinkNode **phead , int data, int index)
//{
//    LinkNode *newNode = createNode(data);
//    if (index == 0) {
//        newNode->next = (*phead);
//        *phead = newNode;
//        return true;
//    }
//    
//
//    LinkNode *indexNode = getIndexNode(*phead, index -1);
//    NSLog(@"data = %d" , indexNode->data);
//    LinkNode *nextNode = indexNode->next;
//    newNode->next = nextNode;
//    
//    indexNode->next =newNode;
//    
//    return true;
//}




/******************************************************/
typedef struct _LinkNode
{
    int data;
    struct _LinkNode *next;
}LinkNode;

LinkNode *createNode(int data)
{
    LinkNode *node = (LinkNode *)malloc(sizeof(LinkNode));
    node->data = data;
    node->next = NULL;
    return node;
}

void _addNode(LinkNode **phead,int data)
{
    if ((*phead)->next == NULL) {
        LinkNode *node = createNode(data);
        (*phead)->next = node;
        return;
    }
    _addNode(&(*phead)->next , data);
}
void addNode(LinkNode **phead , int data)
{
    
    if (*phead == NULL || phead == NULL) {
        *phead = createNode(data);
        return;
    }
    _addNode(phead, data);
    
}



void printNode(LinkNode *node)
{
    LinkNode *tmpNode = node;
    while (tmpNode) {
        printf("%d\n",tmpNode->data);
        tmpNode = tmpNode->next;
    }
}

LinkNode *reverse(LinkNode *phead)
{
    LinkNode *p = phead;
    LinkNode *h = NULL;
    LinkNode *pre = NULL;
    while (p) {
        h = p;
        LinkNode *tmp = p->next;
        p->next = pre;
        pre = p;
        p = tmp;
    }
    return h;
}

void reverse1(LinkNode *head , LinkNode **newhead)
{
    if (head == NULL) {
        return ;
    }
    if (head->next == NULL) {
        *newhead = head;
    }else{
        reverse1(head->next, newhead);
        head->next->next = head;
        head->next = NULL;
    }
}

LinkNode * reverse17317(LinkNode *head)
{
    LinkNode *p = head;
    LinkNode *h = NULL , *pre = NULL;
    while (p) {
        h = p;
        LinkNode *tmp = p->next;
        p->next = pre;
        pre = p;
        p = tmp;
    }
    return h;
}

void reverse117317(LinkNode *head,LinkNode **newhead)
{
    if (head == NULL) {
        return;
    }
    if (head->next == NULL) {
        *newhead = head;
    }else{
        reverse117317(head->next, newhead);
        head->next->next = head;
        head->next = NULL;
    }
    
}





LinkNode * reserve2(LinkNode *head)
{
    LinkNode *p = head;
    LinkNode *h = NULL , *pre = NULL;
    while (p) {
        h = p;
        LinkNode *tmp = p->next;
        p->next = pre;
        pre = p;
        p = tmp;
    }
    return h;
}




void reserve3(LinkNode *head , LinkNode **newHead)
{
    if (head == NULL) {
        return;
    }
    if (head->next == NULL) {
        *newHead = head;
    }else{
        reserve3(head->next, newHead);
        head->next->next = head;
        head->next = NULL;
    }
}










@implementation GGLinkNode

+(void)startLink
{
    LinkNode *node = createNode(9);
    addNode(&node, 8);
    addNode(&node, 1);
    addNode(&node, 10);
    printNode(node);
    
    LinkNode *newhead = NULL;
     reserve3(node, &newhead);//

//    newhead = reserve2(node);
    
    printNode(newhead);
    
//    LinkNode *phead = createNode(9);
//    
//    addNode(&phead, 8);
//    addNode(&phead, 10);
////    LinkNode *node = getNode(phead, 8);
//    LinkNode *node1 = getIndexNode(phead, 8);
//    
//    InsertNode(&phead, 11, 0);
////    NSLog(@"data = %d" , node1->data);
//
//    
//    printNode(phead);
    
}

@end
