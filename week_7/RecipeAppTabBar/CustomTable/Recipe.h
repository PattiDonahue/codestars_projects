//
//  Recipe.h
//  CustomTable
//
//  Created by Patti Donahue on 9/20/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject
@property (nonatomic, strong) NSString *name; // name of recipe
@property (nonatomic, strong) NSString *prepTime; // prep time
@property (nonatomic, strong) NSString *image; // image of recipe
@property (nonatomic, strong) NSArray *ingredients; //ingedients of recipes


@end
