//
//  DetailViewController.m
//  AwesomeGlutenFree
//
//  Created by Patti Donahue on 9/18/15.
//  Copyright (c) 2015 PD. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // set label text with recipe name.
    //self.gfRecipeLabel.text = self.gfRecipeName;
    self.title = self.recipe.name;
    self.recipeImageView.image = [UIImage imageNamed:self.recipe.image];
    NSMutableString *ingredientsTextView = [NSMutableString string];
    for (NSString* ingredient in self.recipe.ingredients) {
        [ingredientsTextView appendFormat:@"%@\n", ingredient];
    }
        self.ingredientsTextView.text = ingredientsTextView;
    
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

@end
