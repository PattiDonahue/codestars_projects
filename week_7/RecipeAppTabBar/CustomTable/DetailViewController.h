//
//  DetailViewController.h
//  CustomTable
//
//  Created by Simon Ng on 2/11/14.
//  Copyright (c) 2014 AppCoda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipe.h"

@interface DetailViewController : UIViewController

//@property (nonatomic, strong) IBOutlet UILabel *recipeLabel;
//@property (nonatomic, strong) NSString *recipeName;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;
@property (weak, nonatomic) IBOutlet UILabel *prepTimeLabel;
@property (weak, nonatomic) IBOutlet UITextView *ingredientsTextView;
@property (nonatomic, strong) Recipe *recipe;

@end
