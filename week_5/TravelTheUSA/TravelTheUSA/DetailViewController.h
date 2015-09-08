//
//  DetailViewController.h
//  TravelTheUSA
//
//  Created by Patti Donahue on 9/6/15.
//  Copyright (c) 2015 PD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (nonatomic, strong) IBOutlet UILabel *placeLabel;
@property (nonatomic, strong) NSString *placeName;

@end
