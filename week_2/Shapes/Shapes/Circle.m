//
//  Circle.m
//  Shapes
//
//  Created by Patti Donahue on 8/15/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import "Circle.h"

@implementation Circle

//use self it is a pointer to the object that is running the method
//used when object wants to send,message to self

//circle1.radiusInMeters = 60;
- (float) circleAreaInMeters
{
    
    //float areaInMeters = [circle1 circleAreaInMeters];
    return [self radiusInMeters] * [self radiusInMeters] * 3.14;
}


@end

