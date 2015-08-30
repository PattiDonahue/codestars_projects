//
//  ViewController.h
//  Calculator
//
//  Created by Patti Donahue on 8/26/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
int currentOperation;
float result;
float currentNumber;
}
@property (weak, nonatomic) IBOutlet UILabel *Label;

- (IBAction)ButtonDigit:(id)sender;
- (IBAction)ButtonOperation:(id)sender;
- (IBAction)Cancel:(id)sender;

@end

