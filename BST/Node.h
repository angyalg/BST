//
//  Node.h
//  BST
//
//  Created by Angyal Gergő on 4/11/14.
//  Copyright (c) 2014 Gergo Angyal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (strong, nonatomic) Node * left;
@property (strong, nonatomic) Node * right;
@property (assign, nonatomic) NSInteger key;

- (id)initWithKey:(NSInteger)key;

@end
