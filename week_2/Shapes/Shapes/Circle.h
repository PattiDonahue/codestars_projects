//
//  Circle.h
//  Shapes
//
//  Created by Patti Donahue on 8/15/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shapes.h"

@interface Circle : Shapes

//Circle has properties no need for accessors
@property (nonatomic) float radiusInMeters;
@property (nonatomic) float circleAreaInMeters;


//Circle has a method that calculates Area
- (float)circleAreaInMeters;

@end