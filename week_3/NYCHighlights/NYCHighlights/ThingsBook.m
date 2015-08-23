//
//  ThingsBook.m
//  NYCHighlights
//
//  Created by Patti Donahue on 8/22/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import "ThingsBook.h"

@implementation ThingsBook
- (instancetype)init
{
    self = [super init];
    if (self) {
        _things = [[NSArray alloc] initWithObjects:
                   @"Brooklyn Bridge",
                   @"South Street Seaport",
                   @"Little Italy",
                   @"Staten Island",
                   @"Rockefeller Center",
                   @"St. Patrick's Cathedral",
                   @"Cental Park", @"Prospect Park",
                   @"Museum Mile",
                   @"The Cloisters", nil];

    }
    return self;
}
-(NSString *)randomThing {
    int random = arc4random_uniform((int)self.things.count);
    return[self.things objectAtIndex:random];
}
@end
