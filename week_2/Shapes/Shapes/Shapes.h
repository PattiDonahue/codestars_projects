//
//  Shapes.h
//  Shapes
//
//  Created by Patti Donahue on 8/14/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shapes : NSObject


//Shapes has properties no need for accessors
@property (nonatomic) float heightInMeters;
@property (nonatomic) float lengthInMeters;
@property (nonatomic) float areaInMeters;
@property (nonatomic) float circleAreaInMeters;
@property (nonatomic) float radiusInMeters;

//Shapes has a method that calculates Area
- (float)areaInMeters;
- (float)circleAreaInMeters;
@end




