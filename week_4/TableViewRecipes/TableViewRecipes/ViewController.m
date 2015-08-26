//
//  ViewController.m
//  TableViewRecipes
//
//  Created by Patti Donahue on 8/25/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *recipes;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Initialize table data
    recipes = @[@"Chocolate Chip Cookies", @"Oatmeal Craisin Cookies", @"Chocolate Mountain", @"Brownies", @"Carrot Cake", @"Irish Soda Bread", @"Lemon Bars", @"Tiramisu", @"Ice Cream Cake", @"Cheesecake", @"Banana Bread", @"Blueberry Muffins", @"Cupcakes", @"Apple Rhubarb Pie", @"Pumpkin Pie", @"Berry Crumble"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:@"choc_chip_cookies"];
    
    return cell;
}
@end
