//
//  ThingsBook.h
//  NYCHighlights
//
//  Created by Patti Donahue on 8/22/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ThingsBook : NSObject
@property (strong, nonatomic) NSArray *things;

-(NSString *)randomThing;
@end


