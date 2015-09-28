//
//  DetailViewController.h
//  AwesomeGlutenFree
//
//  Created by Patti Donahue on 9/18/15.
//  Copyright (c) 2015 PD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipe.h"

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;
@property (weak, nonatomic) IBOutlet UITextView *ingredientsTextView;
@property (weak, nonatomic) IBOutlet UITextView *directionsTextView;

@property (nonatomic, strong) Recipe *recipe;
@end
