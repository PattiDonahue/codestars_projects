//
//  FavAlbumsViewController.m
//  FavoriteAlbums
//
//  Created by Patti Donahue on 10/4/15.
//  Copyright (c) 2015 PD. All rights reserved.
//

#import "FavAlbumsViewController.h"

@interface FavAlbumsViewController ()

@end

@implementation FavAlbumsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.favAlbumsImageView.image = [UIImage imageNamed:self.favAlbumsImageName];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   // if ([segue.identifier isEqualToString:@"showFavAlbumsPhoto"]) {
      //  NSArray *indexPaths = [self.collectionView indexPathForSelectedItems];
       // UINavigationController *destViewController = segue.destinationViewController;
       // FavAlbumsViewController *favAlbumsViewController = (FavAlbumsViewController *) [destViewController.childViewControllers firstObject];
        //NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
        //favAlbumsViewController.favAlbumsImageName = [favAlbumsImages[indexPath.section]objectAtIndex:indexPath.row];
        //[self.collectionView deselectItemAtIndexPath animated:No];
    
   // }
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
//}



- (IBAction)close:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
