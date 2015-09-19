//
//  CustomTableViewController.m
//  AwesomeGlutenFree
//
//  Created by Patti Donahue on 9/16/15.
//  Copyright (c) 2015 PD. All rights reserved.
//

#import "CustomTableViewController.h"
#import "CustomTableViewCell.h"
#import "DetailViewController.h"
#import "Recipe.h"

//#import "GFRecipe.h"



@interface CustomTableViewController ()

@end

@implementation CustomTableViewController


{
    NSArray *recipes;
    //NSArray *searchResults;
    //UISearchController *searchController;
}

//{
  //  NSArray *gfRecipeNames;
  //  NSArray *gfRecipeImages;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Initialize the Recipes array
    Recipe *recipe1 = [Recipe new];
    recipe1.name = @"Chocolate Sugar Cookies";
    recipe1.image = @"chocsugarcookies.JPG";
    recipe1.ingredients = [NSArray arrayWithObjects:@"2 cups of gluten free flour (Better Batter is great)", @"1 tsp baking soda", @"1/4 tsp. salt", @"1 cup butter (2 sticks)", @"1 cup sugar", @"1 tsp. vanilla (McCormick)", @"1 egg",@"3 squares unsweetened chocolate (Baker's)", nil];
    
    Recipe *recipe2 = [Recipe new];
    recipe2.name = @"Oatmeal Craisin Cookies";
    recipe2.image = @"oatmealcookies.JPG";
    recipe2.ingredients = [NSArray arrayWithObjects:@"1 1/2 cups of gluten free flour (Better Batter is great)", @"1 tsp baking soda", @"1/2 tsp. salt", @"1 cup butter (2 sticks)", @"1 cup brown sugar", @"1/2 cup sugar", @"1 tsp. vanilla (McCormick)", @"2 eggs",@"3 cups Bob's Red Mill Oatmeal", @"1 cup raisins", @"1 cup craisins (Ocean Spray)", @"1 tsp. cinnamon", nil];
    
    Recipe *recipe3 = [Recipe new];
    recipe3.name = @"Chocolate Mountain";
    recipe3.image = @"ChocolateMountain.jpg";
    recipe3.ingredients = [NSArray arrayWithObjects:@"2 cups of gluten free flour (Better Batter is great)", nil];
    
    Recipe *recipe4 = [Recipe new];
    recipe4.name = @"Lemon Bars";
    recipe4.image = @"lemonbars.JPG";
    recipe4.ingredients = [NSArray arrayWithObjects:@"2 cups of gluten free flour (Better Batter is great)", nil];
    
    Recipe *recipe5 = [Recipe new];
    recipe5.name = @"Chocolate Chip Cookies";
    recipe5.image = @"ChocChipCookies_w.jpg";
    recipe5.ingredients = [NSArray arrayWithObjects:@"2 1/4 cups of gluten free flour (Better Batter is great)", @"1 tsp baking powder", @"1 tsp. salt", @"1 cup butter (2 sticks)",@"3/4 cup sugar", @"3/4 brown sugar", @" 1 tsp. vanilla (McCormick)", @"2 eggs",@"2 cups  semi-sweet chocolate chips (Nestle Toll House)", nil];

    
    recipes = [NSArray arrayWithObjects:recipe1, recipe2, recipe3, recipe4, recipe5, nil];
    
    
   // searchController = [[UISearchController alloc] initWithSearchResultsController:nil];
   // [searchController.searchBar sizeToFit];
   // self.tableView.tableHeadUISearchController *searchController:erView = searchController.searchBar;
   // self.definesPresentationContext = YES;
    
    
    
    //gfRecipeNames = @[@"Chocolate Sugar Cookies", @"Oatmeal Craisin Cookies", @"Chocolate Mountain",];
                      //@"Chocolate Chip Cookies",  @"Brownies", @"Carrot Cake", @"Irish Soda Bread", @"Lemon Bars", @"Tiramisu", @"Ice Cream Cake", @"Cheesecake", @"Banana Bread", @"Blueberry Muffins", @"Cupcakes", @"Pumpkin Pie", @"Berry Crumble"];
    
    //gfRecipeImages = @[@"chocsugarcookies.JPG", @"oatmealcookies.JPG", @"ChocolateMountain.jpg"];
    
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
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [recipes count];
    // Return the number of rows in the section.
    //return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    CustomTableViewCell *cell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    //configure the cell...
    if (cell == nil) {
        cell=[[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                    reuseIdentifier:CellIdentifier];
    }
    // Display recipe in the table cell
    
    //cell.gfRecipeNameLabel.text = [gfRecipeNames objectAtIndex:indexPath.row];
    //cell.thumbnailImageView.image = [UIImage imageNamed:[gfRecipeImages objectAtIndex:indexPath.row ]];
    
    // Configure the cell...
    
    Recipe *recipe = [recipes objectAtIndex:indexPath.row];
    cell.gfRecipeNameLabel.text = recipe.name;
    cell.thumbnailImageView.image = [UIImage imageNamed:recipe.image];
    
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

// this is source code view controller of the segue
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([segue.identifier isEqualToString:@"showGFRecipeDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailViewController *destViewController = segue.destinationViewController;
        //destViewController.gfRecipeName = [gfRecipeNames objectAtIndex:indexPath.row];
        Recipe *recipe = [recipes objectAtIndex:indexPath.row];
            destViewController.recipe=recipe;
    }
}


@end
