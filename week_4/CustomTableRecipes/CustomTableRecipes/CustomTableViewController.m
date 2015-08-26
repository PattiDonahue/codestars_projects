//
//  CustomTableViewController.m
//  CustomTableRecipes
//
//  Created by Patti Donahue on 8/25/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import "CustomTableViewController.h"
#import "CustomTableViewCell.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController

{
    NSMutableArray *recipeNames;
    NSArray *recipeImages;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Initialize table data
    recipeNames = [NSMutableArray arrayWithObjects:@"Chocolate Chip Cookies", @"Lemon Bars", @"Oatmeal Craisin Cookies", @"Chocolate Mountain", @"Brownies", @"Carrot Cake Bars", @"Irish Soda Bread", @"Tiramisu", @"Ice Cream Pie", @"Cheesecake", @"Banana Bread", @"Blueberry Muffins", @"Cupcakes", @"Chocolate Sugar Cookies", @"Pumpkin Pie", @"Berry Crisp", nil];
    
    recipeImages = @[@"Chocolate_Chip_Cookies_-_kimberlykv.jpg", @"lemonbars.jpg", @"oatmealcookies2.JPG", @"ChocolateMountain.jpg",@"Several_brownies", @"carrotcakebars.JPG", @"sodabread2.JPG", @"Tiramisu.jpg", @"icecreampie.JPG", @"cheesecake.JPG", @"bananabread.JPG", @"Muffin_NIH.jpg", @"Cupcake.JPG", @"chocsugarcookies.JPG", @"Pumpkin_Pie.jpg", @"berrycrisp.JPG"];
    
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
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    //return 0;
    return [recipeNames count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    CustomTableViewCell *cell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    // Configure the cell
    cell.nameLabel.text = [recipeNames objectAtIndex:indexPath.row];
    
    cell.thumbnailImageView.image = [UIImage imageNamed:[recipeImages objectAtIndex:indexPath.row]];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //Remove the row from data model
    [recipeNames removeObjectAtIndex:indexPath.row];
    
    //Delete Row from data source
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
}
 /*   if (editingStyle == UITableViewCellEditingStyleDelete) {
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
