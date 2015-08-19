//
//  Shapes.m
//  Shapes
//
//  Created by Patti Donahue on 8/14/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import "Shapes.h"
//#import "Square.h"
//#import "Circle.h"

@implementation Shapes

//use self it is a pointer to the object that is running the method
//used when object wants to send,message to self

- (float)areaInMeters
{
    return [self lengthInMeters] * [self heightInMeters];
}


- (float)circleAreaInMeters
{

   return [self radiusInMeters] * [self radiusInMeters] * 3.14;
    
}

@end


