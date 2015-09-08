//
//  CustomTableViewController.m
//  TravelTheUSA
//
//  Created by Patti Donahue on 9/2/15.
//  Copyright (c) 2015 PD. All rights reserved.
//

#import "CustomTableViewController.h"
#import "CustomTableViewCell.h"
#import "DetailViewController.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController
{
    NSArray *placesToVisit;
    NSArray *placesToVisitImages;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path =[[NSBundle mainBundle] pathForResource:@"places" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    placesToVisitImages = [dict objectForKey:@"Image"];
    placesToVisit =[dict objectForKey:@"Place"];
    
    //placesToVisit = @[@"Boston Harbor Islands", @"Cape Cod Beach", @"Nashville", @"Grand Canyon", @"NYC Met", @"Newport", @"Amish Country"];
    
    //placesToVisitImages = @[@"Boston_Harbor_Islands.JPG", @"Cape_Cod_Beach.JPG", @"Nashville.jpg", @"Grand_Canyon.jpg", @"NYC_Met.JPG", @"Newport.JPG", @"Amish_Country.JPG"];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [placesToVisit count];
    
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
   // return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    CustomTableViewCell *cell = (CustomTableViewCell *) [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.placeLabel.text = [placesToVisit objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[placesToVisitImages objectAtIndex:indexPath.row]];
    
    // Configure the cell...
    
    return cell;
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


//#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
 
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 if ([segue.identifier isEqualToString:@"showPlaceDetail"]) {
 NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
 DetailViewController *destViewController = segue.destinationViewController;destViewController.placeName = [placesToVisit objectAtIndex:indexPath.row];
 }
 }
/*
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
