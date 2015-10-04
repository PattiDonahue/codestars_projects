//
//  AddRecipeViewController.h
//  RecipeStore
//
//  Created by Patti Donahue on 10/3/15.
//  Copyright (c) 2015 PD. All rights reserved.
//

//import CoreData and Recipe.h so the AddRecipeViewController class can utilize CoreData framework
#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "Recipe.h"
//#import "AppDelegate.h"

//AddRecipeViewController class is subclass of UIViewController it has 2 action methods for save and cancel buttons and 3 text fields  with placholder attributes "name" "image filename" and "prepartion time"
@interface AddRecipeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *imageTextField;
@property (weak, nonatomic) IBOutlet UITextField *prepTimeTextField;
@property (strong) Recipe *selectedRecipe;
- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;

@end

//@implementation AddRecipeViewController{
//    Recipe *recipe;
//}

