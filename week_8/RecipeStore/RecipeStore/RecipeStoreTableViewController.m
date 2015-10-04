//
//  RecipeStoreTableViewController.m
//  RecipeStore
//
//  Created by Patti Donahue on 10/3/15.
//  Copyright (c) 2015 PD. All rights reserved.
//

#import "RecipeStoreTableViewController.h"
#import "AppDelegate.h"
#import "Recipe.h"
#import "AddRecipeViewController.h"

@interface RecipeStoreTableViewController ()
//@interface AddRecipeViewController ()
@end

@implementation RecipeStoreTableViewController {
    NSFetchedResultsController *fetchResultController;
    NSArray *recipes;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //create NSFetchRequest with Recipe entity and specify sort order using NSSortDescriptor, sorting by "name" property and ascending
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]initWithEntityName:@"Recipe"];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]initWithKey:@"name" ascending:YES];
    fetchRequest.sortDescriptors = @[sortDescriptor];
    
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    NSManagedObjectContext *managedObjectContext = [appDelegate managedObjectContext];
    
    //initialize NSFetchResultsController and specify its delegate for monitoring data changes
    if (managedObjectContext !=nil) {
        fetchResultController = [[NSFetchedResultsController alloc]initWithFetchRequest:fetchRequest managedObjectContext:managedObjectContext sectionNameKeyPath:nil cacheName:nil];
        fetchResultController.delegate = self;
     
        //call performFetch a method  to execute the fetch request
        NSError *error;
        if ([fetchResultController performFetch:&error]) {
            recipes = fetchResultController.fetchedObjects;
        } else {
            NSLog(@"Can't get the record! %@ %@", error, [error localizedDescription]);
            //when done we get array of Recipe objects by accessing the fetchedObjects property
            
        }
    }
}



    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//#pragma mark - Table view data source

//need to implement UITableViewDelegate protocol
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return [recipes count];
}

//cellForRowAtIndexPath method will display name of recipe as the cell title and subtitle is image filename and prep time
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    Recipe *recipe = (Recipe *)recipes[indexPath.row];
    cell.textLabel.text = recipe.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ - %@", recipe.image, recipe.prepTime];
    
    return cell;
}

//when there is a content change the following methods of NSFetchedResultsControllerDelegate will be called controllerWillChange Content controllerDidChangeObject and controllerDidChangeContent

//this method tells tableview get ready for change
- (void) controllerWillChangeContent:(NSFetchedResultsController *)controller {
    [self.tableView beginUpdates];
}

//insert new row for the change
-(void) controller:(NSFetchedResultsController *)controller didChangeObject:(id) anObject atIndexPath:(NSIndexPath *)indexPath forChangeType:
    (NSFetchedResultsChangeType)type newIndexPath:(NSIndexPath *)newIndexPath
{
switch (type){
    case NSFetchedResultsChangeInsert:[self.tableView insertRowsAtIndexPaths:@[newIndexPath]withRowAnimation:UITableViewRowAnimationFade];
    break;
    case NSFetchedResultsChangeDelete:[self.tableView deleteRowsAtIndexPaths:@[indexPath]withRowAnimation:UITableViewRowAnimationFade];
    break;
    case NSFetchedResultsChangeUpdate:[self.tableView reloadRowsAtIndexPaths:@[indexPath]withRowAnimation:UITableViewRowAnimationFade];
    break;
    default: [self.tableView reloadData];
    break;
}

recipes = controller.fetchedObjects;
}

//change is completed
-(void) controllerDidChangeContent:(NSFetchedResultsController *)controller {[self.tableView endUpdates];

}

//to delete a manged object
//first grab managed object context then retrieve recipe for deletion
- (BOOL)tableview:(UITableView *) tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    //return NO if you do not want the specified item to be editable.
    return YES;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //delete the row from the data source
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    NSManagedObjectContext *managedObjectContext = [appDelegate managedObjectContext];
    
    if (managedObjectContext != nil){
        Recipe *recipeToDelete = (Recipe *)[fetchResultController objectAtIndexPath:indexPath];
        [managedObjectContext deleteObject:recipeToDelete];
        
        NSError *error;
        if (![managedObjectContext save:&error]) {
            NSLog(@"Can't delete the record! %@ %@", error,[error localizedDescription]);
        }
    }
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

//In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"UpdateRecipe"]) {
        Recipe *selectedRecipe = [recipes objectAtIndex:[[self.tableView indexPathForSelectedRow]row]];
        UINavigationController *destViewController = segue.destinationViewController;
        AddRecipeViewController *recipeViewController = (AddRecipeViewController*)destViewController.topViewController;
        recipeViewController.selectedRecipe = selectedRecipe;
    }

    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
