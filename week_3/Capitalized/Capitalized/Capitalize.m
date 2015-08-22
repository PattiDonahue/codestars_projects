//
//  Capitalize.m
//  Capitalized
//
//  Created by Patti Donahue on 8/19/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import "Capitalize.h"

@implementation Capitalize
-(NSArray*)capStrings:(NSArray*)words{
    NSMutableArray *capitalArray = [[NSMutableArray alloc]init];
    NSString *capString;
    
    for(NSString *str in words){
        capString = [str uppercaseString];
        [capitalArray addObject:capString];
    }
        return capitalArray;
}

@end
