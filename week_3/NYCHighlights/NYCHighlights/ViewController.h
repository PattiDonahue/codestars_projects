//
//  ViewController.h
//  NYCHighlights
//
//  Created by Patti Donahue on 8/22/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ThingsBook;

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *funFreeNYC;
@property (strong, nonatomic) ThingsBook *thingsBook;

@end

