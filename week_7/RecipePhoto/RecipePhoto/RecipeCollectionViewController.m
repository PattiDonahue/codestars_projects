//
//  RecipeCollectionViewController.m
//  RecipePhoto
//
//  Created by Patti Donahue on 9/20/15.
//  Copyright (c) 2015 PD. All rights reserved.
//

#import "RecipeCollectionViewController.h"
#import "RecipeCollectionViewCell.h"
#import "RecipeCollectionHeaderView.h"

@interface RecipeCollectionViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation RecipeCollectionViewController {
    NSArray *recipeImages;
}

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Adding section spacing
    UICollectionViewFlowLayout *collectionViewLayout =
    (UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout;
    collectionViewLayout.sectionInset = UIEdgeInsetsMake(20, 0, 20, 0);
    
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[RecipeCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Initialize image array
    NSArray *mainDishImages = @[@"egg_benedict.jpg", @"full_breakfast.jpg", @"ham_and_cheese_panini.jpg", @"ham_and_egg_sandwich.jpg", @"hamburger.jpg", @"instant_noodle_with_egg.jpg", @"japanese_noodle_with_pork.jpg", @"mushroom_risotto.jpg", @"noodle_with_bbq_pork.jpg", @"thai_shrimp_cake.jpg", @"vegetable_curry.jpg"];
    
    NSArray *drinkDessertImages = @[@"angry_birds_cake.jpg", @"creme_brelee.jpg", @"green_tea.jpg", @"starbucks_coffee.jpg", @"white_chocolate_donut.jpg"];
    
    recipeImages = @[mainDishImages, drinkDessertImages];
    
    
    // Initialize image array
    //recipeImages= @[@"angry_birds_cake.jpg", @"creme_brelee.jpg", @"egg_benedict.jpg", @"full_breakfast.jpg", @"green_tea", @"ham_and_cheese_panini.jpg", @"ham_and_egg_sandwich.jpg", @"hamburger.jpg", @"instant_noodle_with_egg.jpg", @"japanese_noodle_with_pork.jpg", @"mushroom_risotto.jpg", @"noodle_with_bbq_pork.jpg", @"starbucks_coffee.jpg", @"thai_shrimp_cake.jpg", @"vegetable_curry.jpg", @"white_chocolate_donut.jpg"];
}

    //recipeImages = @[@"angry_birds_cake.jpg", @"creme_brelee.jpg", @"egg_benedict.jpg", @"full_breakfast.jpg", @"green_tea.jpg", @"ham_and_cheese_panini.jpg", @"ham_and_egg_sandwich.jpg", @"hamburger.jpg", @"instant_noodle_with_egg.jpg", @"japanese_noodle_with_pork.jpg", @"mushroom_risotto.jpg", @"noodle_with_bbq_pork.jpg", @"starbucks_coffee.jpg", @"thai_shrimp_cake.jpg", @"vegetable_curry.jpg", @"white_chocolate_donut.jpg"];


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//#pragma mark - Navigation

//In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
//}

//#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [recipeImages count];
    //return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [[recipeImages objectAtIndex:section] count];
    //return recipeImages.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    RecipeCollectionViewCell *cell = (RecipeCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    cell.recipeImageView.image = [UIImage imageNamed:[recipeImages [indexPath.section]objectAtIndex:indexPath.row]];
    
    cell.backgroundView =[[UIImageView alloc]initWithImage: [UIImage imageNamed:@"photo-frame"]] ;
    //cell.recipeImageView.image = [UIImage imageNamed:[recipeImages[indexPath.section] objectAtIndex:indexPath.row]];
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView
           viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *reusableview = nil;
    if (kind == UICollectionElementKindSectionHeader) {
        RecipeCollectionHeaderView *headerView = [collectionView
        dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader
        withReuseIdentifier:@"HeaderView" forIndexPath:indexPath];
        NSString *title = [[NSString alloc]initWithFormat:@"Recipe Group #%ld",
                           indexPath.section + 1];
        headerView.titleLabel.text = title;
        reusableview = headerView;
    }
    if (kind == UICollectionElementKindSectionFooter) {
        UICollectionReusableView *footerview = [collectionView
        dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter
        withReuseIdentifier:@"FooterView" forIndexPath:indexPath];
        reusableview = footerview;
    }
    return reusableview;
}
//#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
