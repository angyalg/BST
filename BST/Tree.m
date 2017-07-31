//
//  Tree.m
//  BST
//
//  Created by Angyal Gergő on 4/11/14.
//  Copyright (c) 2014 Gergo Angyal. All rights reserved.
//

#import "Tree.h"

@implementation Tree

- (id)initWithRoot:(Node *)aNode {
    self = [super init];
    if (self) {
        _root = aNode;
    }
    return self;
}

- (void)add:(int)aKey {
    if (_root == nil) {
        _root = [[Node alloc] initWithKey:aKey];
    }
    else if (![self lookup:aKey node:_root]) {
        [self add:aKey node:_root];
    }
}

- (void)add:(int)aKey node:(Node*)aNode {
    if ( aNode.key > aKey) {
        if ( aNode.left == nil) {
            Node * tmpNode =  [[Node alloc] initWithKey:aKey];
            aNode.left = tmpNode;
            [tmpNode release];
        }
        else {
            [self add:aKey node:aNode.left];
        }
    }
    else {
        if ( aNode.right == nil) {
            Node * tmpNode =  [[Node alloc] initWithKey:aKey];
            aNode.right = tmpNode;
            [tmpNode release];
        }
        else {
            [self add:aKey node:aNode.right];
        }
    }
}

- (void)remove:(int)aKey {
    if ([self lookup:aKey]) {
        [self remove:aKey node:_root];
    }
}

- (Node *)remove:(int)aKey node:(Node *)aNode {
    if (aNode != nil) {
        //aNode is the Node to be removed
        if (aNode.key == aKey)
        {
            if ( aNode.left == nil && aNode.right == nil ) {
                return nil;
            }
            else if ( aNode.left == nil) {
                return aNode.right;
            }
            else if ( aNode.right == nil) {
                return aNode.left;
            }
            
            Node * tmp = [self min:aNode.right];
            aNode.key = tmp.key;
            aNode.right = [self remove:tmp.key node:aNode.right];
            return aNode;
        }
        else if ( aNode.key > aKey ) {
            [aNode setLeft:[self remove:aKey node:aNode.left]];
            return aNode;
        }
        else if ( aNode.key < aKey ) {
            [aNode setRight:[self remove:aKey node:aNode.right]];
            return aNode;
        }
    }
    return nil;
}

- (BOOL)lookup:(int)aKey {
    return [self lookup:aKey node:_root];
}

- (BOOL)lookup:(int)aKey node:(Node*)aNode {
    if ( aNode == nil) {
        return NO;
    }
    else if ( aNode.key == aKey) {
        return YES;
    }
    else if ( aNode.key > aKey ) {
        return [self lookup:aKey node:aNode.left] ;
    }
    else if ( aNode.key < aKey ) {
        return [self lookup:aKey node:aNode.right] ;
    }
    return NO;
}

- (Node *)min {
    return [self min:_root];
}

- (Node *)min:(Node*)aNode {
    if ( aNode.left == nil)
        return aNode;
    else {
        return [self min:aNode.left];
    }
}

- (Node *)max {
    return [self max:_root];
}

- (Node *)max:(Node*)aNode {
    if ( aNode.right == nil)
        return aNode;
    else {
        return [self max:aNode.right];
    }
}

- (void)dealloc {
    [_root release];
    [super dealloc];
}

@end
