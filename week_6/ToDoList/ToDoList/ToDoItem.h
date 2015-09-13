//
//  ToDoItem.h
//  ToDoList
//
//  Created by Patti Donahue on 9/13/15.
//  Copyright (c) 2015 PD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject
@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
