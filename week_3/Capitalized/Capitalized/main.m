//
//  main.m
//  Capitalized
//
//  Created by Patti Donahue on 8/19/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *words = @[@"cat", @"dog", @"frog"];
        NSString *myString = [words componentsJoinedByString:@" "];
        
        NSString *upcaseWords = [myString uppercaseString];
        
        NSLog(@"Question one answer - the NSArray capitalized is: %@", [upcaseWords uppercaseString]);
        
    }
    return 0;
}

