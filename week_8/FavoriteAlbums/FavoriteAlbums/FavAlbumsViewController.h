//
//  FavAlbumsViewController.h
//  FavoriteAlbums
//
//  Created by Patti Donahue on 10/4/15.
//  Copyright (c) 2015 PD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FavAlbumsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *favAlbumsImageView;

- (IBAction)close:(id)sender;
@property (weak, nonatomic) NSString *favAlbumsImageName;
@end
