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












void reverse12(LinkNode **head)
{
    LinkNode *p = *head, *pre = NULL;
    
    while (p) {
        (*head) = p;
        LinkNode *tmp = p->next;
        p->next = pre;
        pre = p;
        p = tmp;
    }
}

void reverse123(LinkNode *head , LinkNode **newNode)
{
    if (head == NULL) {
        return;
    }
    if (head->next == NULL) {
        *newNode = head;
    }else{
        reverse123(head->next, newNode);
        head->next->next = head;
        head->next = NULL;
    }
    
}

typedef struct _MLinkNode1
{
    int data;
    struct _MLinkNode1 *next;
}MLinkNode1;

MLinkNode1 *createNode1(int data)
{
    MLinkNode1 *node= (MLinkNode1 *)malloc(sizeof(MLinkNode1));
    node->data = data;
    node->next = NULL;
    return node;
}

void _addNode1(MLinkNode1 **head , int data)
{
    if ((*head)->next == NULL) {
        MLinkNode1 *node = createNode1(data);
        (*head)->next = node;
        return;
    }
    _addNode1(&((*head)->next), data);
}

void addNode1(MLinkNode1 **head , int data)
{
    if (*head == NULL || head == NULL) {
        return;
    }
    _addNode1(&(*head), data);
}

void reverse1234(MLinkNode1 **head)
{
    MLinkNode1 *pre = NULL;
    MLinkNode1 *p = (*head);
    
    while (p) {
        (*head) = p;
        MLinkNode1 *tmp = p->next;
        p->next = pre;
        pre = p;
        p = tmp;
    }
}

void reverse321(MLinkNode1 **head)
{
    if (*head == NULL) {
        return;
    }
    MLinkNode1 *p = *head , *pre = NULL;
    while (p) {
        (*head) = p;
        MLinkNode1 *tmp = p->next;
        p->next = pre;
        pre = p;
        p = tmp;
    }
}

void reverse21(MLinkNode1 *head,MLinkNode1 **newNode)
{
    if (head == NULL) {
        return;
    }
    if (head->next == NULL) {
        *newNode = head;
    }else{
        reverse21(head->next,newNode);
        head->next->next = head;
        head->next = NULL;
    }
    
}


void print1(MLinkNode1 *head)
{
    MLinkNode1 *p = head;
    while (p) {
        printf("%d ",p->data);
        p = p->next;
    }
    printf("\n");
}



typedef struct _MLinkNode2
{
    int data;
    struct _MLinkNode2 *next;
}MLinkNode2;

MLinkNode2 *createLinkNode2(int data)
{
    MLinkNode2 *node = (MLinkNode2 *)malloc(sizeof(MLinkNode2));
    node->data = data;
    node->next = NULL;
    return node;
}

void _addNode2(MLinkNode2 **head , int data)
{
    if ((*head)->next == NULL) {
        MLinkNode2 *node = createLinkNode2(data);
        (*head)->next = node;
        return;
    }
    _addNode2(&(*head)->next, data);
}

void addNode2(MLinkNode2 **head , int data)
{
    if (*head == NULL || head == NULL) {
        return;
    }
    
    _addNode2(head, data);
    
}

void reverseNode2(MLinkNode2 **head)
{
    MLinkNode2 *p , *pre = NULL;
    p = *head;
    
    while (p) {
        *head = p;
        MLinkNode2 *tmp = p->next;
        
        p->next = pre;
        pre = p;
        p = tmp;
        
    }
    
    
    
}

void printNode2(MLinkNode2 *head)
{
    MLinkNode2 *p = head;
    while (p) {
        printf("%d ",p->data);
        p = p->next;
    }
    
}


typedef struct _MLinkNode3
{
    int data;
    struct _MLinkNode3 *next;
}MLinkNode3;

MLinkNode3 *createNode3(int data)
{
    MLinkNode3 *node = (MLinkNode3 *)malloc(sizeof(MLinkNode3));
    node->data = data;
    node->next = NULL;
    return node;
}

void printNode3(MLinkNode3 *node)
{
    MLinkNode3 *p = node;
//    printf("%d ",p->data);
    while (p) {
        
        printf("%d ",p->data);
        p = p->next;
    }
}

void _addNode3(MLinkNode3 **heap, int data)
{
    if ((*heap)->next == NULL) {
        MLinkNode3 *tmp = createNode3(data);
        (*heap)->next = tmp;
        return;
    }
    _addNode3(&(*heap)->next, data);
}

void addNode3(MLinkNode3 **node,int data)
{
    if (node == NULL || *node == NULL) {
        return;
    }
    _addNode3(node, data);
}

void reverse33(MLinkNode3 **head)
{
    MLinkNode3 *p , *pre = NULL;
    
    p = (*head);
    while (p) {
        (*head) = p;
        MLinkNode3 *tmp = p->next;
        p->next = pre;
        pre = p;
        p = tmp;
    }
}

@implementation GGLinkNode

+(void)startLink
{
    MLinkNode3 *node3 = createNode3(8);
    addNode3(&node3, 3);
    
    addNode3(&node3, 9);
    
    addNode3(&node3, 1);
    printNode3(node3);
    
    printf("\n");
    reverse33(&node3);
    printNode3(node3);
    
//    MLinkNode2 *node = createLinkNode2(8);
//    addNode2(&node, 9);
//    
//    addNode2(&node, 3);
//    
//    addNode2(&node, 1);
//    
//    
//    printNode2(node);
//    
//    reverseNode2(&node);
//    printNode2(node);
    
//    LinkNode *node = createNode(9);
//    addNode(&node, 8);
//    addNode(&node, 1);
//    addNode(&node, 10);
//    printNode(node);
//    
//    LinkNode *newhead = NULL;
//     reverse123(node, &newhead);//
//
////    newhead = reverve66(node);
////    reverse12(&node);
//    printNode(newhead);
    
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
