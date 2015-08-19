//
//  main.m
//  Shapes
//
//  Created by Patti Donahue on 8/14/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shapes.h"
#import "Square.h"
#import "Circle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //create an instance of Shapes
        Shapes *square1 = [[Shapes alloc] init];
        
        //values for square instance variables
        square1.heightInMeters = 60;
        square1.lengthInMeters = 60;
        
        //create an instance of Shapes
        Shapes *circle1 = [[Shapes alloc] init];
        
        //values for circle instance variables
        circle1.radiusInMeters = 50;
            
        //log value using method
        float areaInMeters = [square1 areaInMeters];
        NSLog(@"Answer to question 2, area of the square = %f square meters", areaInMeters);
        
        //log value using method
        float circleAreaInMeters = [circle1 circleAreaInMeters];
        NSLog(@"Answer to question 3, area of the circle = %f square meters", circleAreaInMeters);
        
    }
    return 0;
}






