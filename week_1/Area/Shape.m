//
//  Shape.m
//  Area
//
//  Created by Patti Donahue on 8/9/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import "Shape.h"
//#import "Area/main.m"

@implementation Shape

//use self it is a pointer to the object that is running the method
//used when object wants to send ,message to self

- (float)areaInMeters
{
    float h = [self heightInMeters];
    return [self lengthInMeters] * h;
}
@end
