//
//  main.m
//  Area
//
//  Created by Patti Donahue on 8/9/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
//#import "Shape.m"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //create an instance of Shape
        Shape *rectangle1 = [[Shape alloc] init];
        
        //values for instance variables 
        rectangle1.heightInMeters = 88;
        rectangle1.lengthInMeters = 44;
        
        //log value using method
        float areaInMeters = [rectangle1 areaInMeters];
        NSLog(@"Answer to question 3, area= %f square meters", areaInMeters);
    }
    return 0;
}
