//
//  FavAlbumsCollectionViewController.m
//  FavoriteAlbums
//
//  Created by Patti Donahue on 10/4/15.
//  Copyright (c) 2015 PD. All rights reserved.
//

#import "FavAlbumsCollectionViewController.h"
#import "FavAlbumsCollectionViewCell.h"
#import "FavAlbumsViewController.h"

@interface FavAlbumsCollectionViewController ()

@end

@implementation FavAlbumsCollectionViewController {
    NSArray *favAlbumsImages;
}

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    //initalize image array
    favAlbumsImages = @[@"adele.jpg",@"borntorun.jpg", @"billyjoel.jpg", @"beachboys.jpg", @"beatles.jpg", @"whitney.jpg", @"bruce.jpg", @"eltonjohn.jpg", @"sandg.jpg",@"righteousbros.jpg"];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showFavAlbumsPhoto"]) {
        NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
        UINavigationController *destViewController = segue.destinationViewController;
        FavAlbumsViewController *favAlbumsViewController = (FavAlbumsViewController *) [destViewController.childViewControllers firstObject];
        NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
        favAlbumsViewController.favAlbumsImageName = [favAlbumsImages[indexPath.section]objectAtIndex:indexPath.row];
        [self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
        
    }
}




//#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return favAlbumsImages.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    FavAlbumsCollectionViewCell *cell = (FavAlbumsCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
        cell.favAlbumsImageView.image = [UIImage imageNamed:[favAlbumsImages objectAtIndex:indexPath.row]];
    return cell;
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
