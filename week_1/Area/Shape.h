//
//  Shape.h
//  Area
//
//  Created by Patti Donahue on 8/9/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shape : NSObject
//Area has 2 properties no need for accessors
@property (nonatomic) float heightInMeters;
@property (nonatomic) float lengthInMeters;


//Shape has a method that calculates Area
- (float)areaInMeters;

@end





