//
//  main.m
//  Capitalized
//
//  Created by Patti Donahue on 8/19/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Capitalize.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *words = @[@"cat", @"dog", @"frog"];
        
        Capitalize *animals = [[Capitalize alloc]init];
        
        NSArray *cap = [animals capStrings:words];
            NSLog(@"%@", cap);
        
            }
    return 0;
}

