//
//  RecipeStoreTableViewController.h
//  RecipeStore
//
//  Created by Patti Donahue on 10/3/15.
//  Copyright (c) 2015 PD. All rights reserved.
//

//need to import CoreData to use it
#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

//need to adopt NSFetchedResultsControllerDelegate protocol to notify delegate of changes in fetch results
@interface RecipeStoreTableViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@end
