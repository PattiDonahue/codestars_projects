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

//@property (nonatomic, strong) IBOutlet UILabel *gfRecipeLabel;
//@property (nonatomic, strong) NSString *gfRecipeName;

//@property (weak, nonatomic) IBOutlet UILabel *ingredientsTextView;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;
@property (weak, nonatomic) IBOutlet UITextView *ingredientsTextView;

@property (nonatomic, strong) Recipe *recipe;
@end
