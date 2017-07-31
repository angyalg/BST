//
//  Tree.h
//  BST
//
//  Created by Angyal Gergő on 4/11/14.
//  Copyright (c) 2014 Gergo Angyal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface Tree : NSObject

@property (strong, nonatomic) Node * root;

- (id)initWithRoot:(Node *)aNode;
- (void)add:(int)aKey node:(Node*)aNode;
- (void)add:(int)aKey;
- (void)remove:(int)aKey;
- (Node *)remove:(int)aKey node:(Node *)aNode;
- (BOOL)lookup:(int)aKey;
- (Node *)min;
- (Node *)max;

@end
