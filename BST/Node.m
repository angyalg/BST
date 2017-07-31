//
//  Node.m
//  BST
//
//  Created by Angyal Gergő on 4/11/14.
//  Copyright (c) 2014 Gergo Angyal. All rights reserved.
//

#import "Node.h"

@implementation Node 

- (id)initWithKey:(NSInteger)aKey {
    self = [super init];
    if (self) {
        _key = aKey;
    }
    return self;
}

- (void)dealloc {
    [_left release];
    [_right release];
    [super dealloc];
}

@end
