//
//  CustomTableViewController.m
//  CustomTable

#import "CustomTableViewController.h"
#import "CustomTableViewCell.h"
#import "DetailViewController.h"
//#import "Recipe.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController
//declare variables

{
    NSArray *recipes;
    NSArray *searchResults;
    UISearchController *searchController;
}
//{
    //NSArray *recipeNames;
   // NSArray *recipeImages;
   // NSArray *recipePrepTimes;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Initialize the recipes array
    Recipe *recipe1 = [Recipe new];
    recipe1.name = @"Egg Benedict";
    recipe1.prepTime = @"30 min";
    recipe1.image = @"egg_benedict.jpg";
    recipe1.ingredients = [NSArray arrayWithObjects:@"2 fresh English muffins",nil];
    
    Recipe *recipe2 = [Recipe new];
    recipe2.name = @"Mushroom Risotto";
    recipe2.prepTime = @"30 min";
    recipe2.image = @"mushroom_risotto.jpg";
    recipe2.ingredients = [NSArray arrayWithObjects:@"1 tbsp dried porcini mushrooms", nil];
    
    Recipe *recipe3 = [Recipe new];
    recipe3.name = @"Full Breakfast";
    recipe3.prepTime = @"20 min";
    recipe3.image = @"full_breakfast.jpg";
    recipe3.ingredients = [NSArray arrayWithObjects:@"2 sausages", nil];
    
    Recipe *recipe4 = [Recipe new];
    recipe4.name = @"Hamburger";
    recipe4.prepTime = @"30 min";
    recipe4.image = @"hamburger.jpg";
    recipe4.ingredients = [NSArray arrayWithObjects:@"400g of ground beef", nil];
    
    Recipe *recipe5 = [Recipe new];
    recipe5.name = @"Ham and Egg Sandwich";
    recipe5.prepTime = @"10 min";
    recipe5.image = @"ham_and_egg_sandwich.jpg";
    recipe4.ingredients = [NSArray arrayWithObjects:@"400g of ham", nil];
    
    Recipe *recipe6 = [Recipe new];
    recipe6.name = @"Creme Brelee";
    recipe6.prepTime = @"1 hour";
    recipe6.image = @"creme_brelee.jpg";
    recipe6.ingredients = [NSArray arrayWithObjects:@"1 egg", nil];
    
    Recipe *recipe7 = [Recipe new];
    recipe7.name = @"White Chocolate Donut";
    recipe7.prepTime = @"45 min";
    recipe7.image = @"white_chocolate_donut.jpg";
    recipe7.ingredients = [NSArray arrayWithObjects:@"2 cups flour", nil];
    
    Recipe *recipe8 = [Recipe new];
    recipe8.name = @"Starbucks Coffee";
    recipe8.prepTime = @"5 min";
    recipe8.image = @"starbucks_coffee.jpg";
    recipe8.ingredients = [NSArray arrayWithObjects:@"1 cup coffee", nil];
    
    Recipe *recipe9 = [Recipe new];
    recipe9.name = @"Vegetable Curry";
    recipe9.prepTime = @"30 min";
    recipe9.image = @"vegetable_curry.jpg";
    recipe9.ingredients = [NSArray arrayWithObjects:@"2 cups vegetables", nil];
    
    Recipe *recipe10 = [Recipe new];
    recipe10.name = @"Instant Noodle with Egg";
    recipe10.prepTime = @"8 min";
    recipe10.image = @"instant_noodle_with_egg.jpg";
    recipe10.ingredients = [NSArray arrayWithObjects:@"1 egg", nil];
    
    Recipe *recipe11 = [Recipe new];
    recipe11.name = @"Noodle with BBQ Pork";
    recipe11.prepTime = @"20 min";
    recipe11.image = @"noodle_with_bbq_pork.jpg";
    recipe11.ingredients = [NSArray arrayWithObjects:@"400g of pork", nil];
    
    Recipe *recipe12 = [Recipe new];
    recipe12.name = @"Japanese Noodle with Pork";
    recipe12.prepTime = @"20 min";
    recipe12.image = @"japanese_noodle_with_pork.jpg";
    recipe12.ingredients = [NSArray arrayWithObjects:@"400g of pork", nil];
    
    Recipe *recipe13 = [Recipe new];
    recipe13.name = @"Green Tea";
    recipe13.prepTime = @"5 min";
    recipe13.image = @"green_tea.jpg";
    recipe13.ingredients = [NSArray arrayWithObjects:@"1/2 cup green tea", nil];
    
    Recipe *recipe14 = [Recipe new];
    recipe14.name = @"Thai Shrimp Cake";
    recipe14.prepTime = @"1.5 hours";
    recipe14.image = @"thai_shrimp_cake.jpg";
    recipe14.ingredients = [NSArray arrayWithObjects:@"400g of ground beef", nil];
    
    Recipe *recipe15 = [Recipe new];
    recipe15.name = @"Angry Birds Cake";
    recipe15.prepTime = @"4 hours";
    recipe15.image = @"angry_birds_cake.jpg";
    recipe15.ingredients = [NSArray arrayWithObjects:@"2 cups flour", nil];
    
    Recipe *recipe16 = [Recipe new];
    recipe16.name = @"Ham and Cheese Panini";
    recipe16.prepTime = @"10 min";
    recipe16.image = @"ham_and_cheese_panini.jpg";
    recipe16.ingredients = [NSArray arrayWithObjects:@"400g of ham", nil];
    
    recipes = [NSArray arrayWithObjects:recipe1, recipe2, recipe3, recipe4, recipe5, recipe6, recipe7, recipe8, recipe9, recipe10, recipe11, recipe12, recipe13, recipe14, recipe15, recipe16, nil];
    
    searchController = [[UISearchController alloc]
                                            initWithSearchResultsController:nil];
    [searchController.searchBar sizeToFit];
    self.tableView.tableHeaderView = searchController.searchBar;
    self.definesPresentationContext = YES;
    
    searchController.searchResultsUpdater = self;
    searchController.dimsBackgroundDuringPresentation = NO;
    
    //recipeNames = @[@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini"];
    
    //recipeImages = @[@"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg", @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme_brelee.jpg", @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg", @"instant_noodle_with_egg.jpg", @"noodle_with_bbq_pork.jpg", @"japanese_noodle_with_pork.jpg", @"green_tea.jpg", @"thai_shrimp_cake.jpg", @"angry_birds_cake.jpg", @"ham_and_cheese_panini.jpg"];
    
    //recipePrepTimes = [NSArray arrayWithObjects:@"30 min", @"30 min", @"20 min", @"30 min", @"10 min", @"1 hour", @"45 min", @"5 min", @"30 min", @"8 min", @"20 min", @"20 min", @"5 min", @"1.5 hour", @"4 hours", @"10 min", nil];

}

- (void)filterContentForSearchText:(NSString *)searchText {
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"name contains[c]%@", searchText];
                                    searchResults = [recipes filteredArrayUsingPredicate:resultPredicate];
                                    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (searchController.active){
        return searchResults.count;
    } else {
    return [recipes count];
}
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    CustomTableViewCell *cell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    Recipe *recipe;
    if (searchController.active) {
        recipe = [searchResults objectAtIndex:indexPath.row];
    } else {
        recipe =[recipes objectAtIndex:indexPath.row];
    }
    
    
    //cell.nameLabel.text = [recipeNames objectAtIndex:indexPath.row];
    //cell.thumbnailImageView.image = [UIImage imageNamed:[recipeImages objectAtIndex:indexPath.row]];
    //cell.prepTimeLabel.text = [recipePrepTimes objectAtIndex:indexPath.row];
    
    //Recipe *recipe =[recipes objectAtIndex:indexPath.row];
    
    cell.nameLabel.text = recipe.name;
    cell.thumbnailImageView.image = [UIImage imageNamed:recipe.image];
    cell.prepTimeLabel.text = recipe.prepTime;
    
    return cell;
}

- (void) updateSearchResultsForSearchController:(UISearchController *)aSearchController {
    [self filterContentForSearchText:searchController.searchBar.text];
    [self.tableView reloadData];
}

//#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showRecipeDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailViewController *destViewController = segue.destinationViewController;
        
        Recipe *recipe;
        if (searchController.active) {
            recipe = [searchResults objectAtIndex:indexPath.row];
        } else {
            recipe =[recipes objectAtIndex:indexPath.row];
        }

        
        destViewController.recipe = recipe;
    }
}


@end
