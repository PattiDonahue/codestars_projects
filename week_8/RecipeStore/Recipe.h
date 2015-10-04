//
//  Recipe.h
//  
//
//  Created by Patti Donahue on 10/3/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
//#import "AddRecipeViewController.h"

//Recipe class is subclass of NSMangedObject and maps to the Recipe entity
@interface Recipe : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * image;
@property (nonatomic, retain) NSString * prepTime;

@end
