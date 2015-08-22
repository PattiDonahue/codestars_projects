//
//  main.m
//  AddTwoArrays
//
//  Created by Patti Donahue on 8/20/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    int i;
    @autoreleasepool {
        
        NSArray *arr1 = @[@1, @2, @3];
        NSArray *arr2 = @[@4, @5, @6];
        NSArray *yetAnotherArray = [arr1 arrayByAddingObjectsFromArray:arr2];
        NSLog(@"%@", yetAnotherArray);
    }
    
    return 0;
}
