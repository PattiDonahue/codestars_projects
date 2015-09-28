//
//  Recipe.h
//  AwesomeGlutenFree
//
//  Created by Patti Donahue on 9/18/15.
//  Copyright (c) 2015 PD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject
@property (nonatomic, strong) NSString *name; //name of recipe

@property (nonatomic, strong) NSString *image; //name of recipe image
@property (nonatomic, strong) NSArray *ingredients;
@property (nonatomic, strong) NSArray *directions;
@end
