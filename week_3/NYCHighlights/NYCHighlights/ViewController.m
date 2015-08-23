//
//  ViewController.m
//  NYCHighlights
//
//  Created by Patti Donahue on 8/22/15.
//  Copyright (c) 2015 Patti Donahue. All rights reserved.
//

#import "ViewController.h"
#import "ThingsBook.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   // self.things = [[NSArray alloc] initWithObjects:@"Brooklyn Bridge", @"South Street Seaport", @"Little Italy", @"Staten Island", @"Rockefeller Center", @"St. Patrick's Cathedral", @"Cental Park", @"Prospect Park", @"Museum Mile", @"The Cloisters", nil];
    
    self.thingsBook = [[ThingsBook alloc]init];
    self.funFreeNYC.text = [self.thingsBook randomThing];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showMoreAwesomeThingsToDo {
   
    self.funFreeNYC.text = [self.thingsBook randomThing];
}

@end
