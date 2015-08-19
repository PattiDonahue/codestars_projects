//
//  Square.h
//  Shapes
//
//  Created by Patti Donahue on 8/14/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shapes.h"

@interface Square : Shapes

//Square has properties no need for accessors
@property (nonatomic) float heightInMeters;
@property (nonatomic) float lengthInMeters;
@property (nonatomic) float areaInMeters;


//Square has a method that calculates Area
- (float)areaInMeters;

@end

