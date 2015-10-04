//
//  AddRecipeViewController.m
//  RecipeStore
//
//  Created by Patti Donahue on 10/3/15.
//  Copyright (c) 2015 PD. All rights reserved.
//

#import "AddRecipeViewController.h"
//#import <CoreData/CoreData.h>
//#import "Recipe.h"
#import "AppDelegate.h"

@interface AddRecipeViewController ()

@end

//declare recipe variable
@implementation AddRecipeViewController {
    Recipe *recipe;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.selectedRecipe) {
        self.nameTextField.text = self.selectedRecipe.name;
        self.imageTextField.text = self.selectedRecipe.image;
        self.prepTimeTextField.text = self.selectedRecipe.prepTime;
    }
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

//cancel and save buttons
//implement save and cancel methods
- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

//grab managed object context via AppDelegate and then create  NSManagedObject for the new recipe
- (IBAction)save:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    NSManagedObjectContext *managedObjectContext = [appDelegate managedObjectContext];
    if (self.selectedRecipe) {
        recipe = self.selectedRecipe;
    } else {
        recipe = (Recipe *)[NSEntityDescription insertNewObjectForEntityForName:@"Recipe"inManagedObjectContext:managedObjectContext];
    }
    //to use CoreData Framework the model objects should be instances of NSManagedObject and Recipe is a subclass or NSManagedObject
    //to create new instance of NSManagedObject we use insertNewObjectForEntity method then save it
    
    //recipe = (Recipe *) [NSEntityDescription insertNewObjectForEntityForName:@"Recipe" inManagedObjectContext:managedObjectContext];
    
    recipe.name = self.nameTextField.text;
    recipe.image = self.imageTextField.text;
    recipe.prepTime = self.prepTimeTextField.text;
    
    NSError *error;
        if (![managedObjectContext save:&error]) {
            NSLog(@"Cant't Save! %@ %@", error, [error localizedDescription]);
        }
    //dismissViewControllerAnimated method is the cancel method when cancel button is tapped
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
