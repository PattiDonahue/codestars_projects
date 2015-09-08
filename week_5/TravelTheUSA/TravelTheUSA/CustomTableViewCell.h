//
//  CustomTableViewCell.h
//  TravelTheUSA
//
//  Created by Patti Donahue on 9/4/15.
//  Copyright (c) 2015 PD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *placeLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end
