//
//  main.m
//  AddTwoArrays
//
//  Created by Patti Donahue on 8/20/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *myFirstArray = [NSMutableArray arrayWithObjects: @"1",@"2", @"3", nil];
      
       // - (void)addObjectsFromArray:(NSArray *)otherArray
        
        [myFirstArray addObject:@"4"];
        
        
        NSLog(@"%@", myFirstArray);
    }
    return 0;
}


