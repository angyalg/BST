//
//  AppDelegate.m
//  BST
//
//  Created by Angyal Gergő on 4/11/14.
//  Copyright (c) 2014 Gergo Angyal. All rights reserved.
//

#import "AppDelegate.h"
#import "Node.h"
#import "Tree.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
    
    Tree * tree = [Tree new];
    [tree add:3];
    [tree add:5];
    [tree add:8];
    [tree add:1];
    [tree add:6];
    [tree add:1];
    [tree add:10];
    
    NSLog(@"Tree lookup : %d",[tree lookup:4]);
    NSLog(@"Tree lookup : %d",[tree lookup:3]);
    
    NSLog(@"Minimum a fában: %ld",(long)[tree min].key);
    NSLog(@"Maximum a fában: %ld",(long)[[tree max] key]);
    
    [tree remove:5];
    NSLog(@"%d",[tree lookup:5]);
    
    [tree remove:1];
    NSLog(@"%d",[tree lookup:1]);
    
    NSLog(@"Maximum a fában: %ld",(long)[[tree max] key]);
    
    [tree remove:3];
    NSLog(@"%d",[tree lookup:3]);

}

@end
