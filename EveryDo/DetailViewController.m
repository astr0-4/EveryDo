//
//  DetailViewController.m
//  EveryDo
//
//  Created by Alex on 2015-06-29.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *detailTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *priority;

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)viewDidLoad {

    [super viewDidLoad];
    
    self.title = self.toDoItem.itemTitle;
    self.detailTextField.text = self.toDoItem.itemDescription;
    self.titleTextField.text = self.toDoItem.itemTitle;
    self.completedButton.selectedSegmentIndex = [self.toDoItem.isCompleted integerValue];
    self.priority.selectedSegmentIndex = [self.toDoItem.priorityNumber integerValue];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)savePressed:(id)sender {
    self.toDoItem.itemTitle = self.titleTextField.text;
    self.toDoItem.itemDescription = self.detailTextField.text;
    self.toDoItem.isCompleted = [NSNumber numberWithInteger:self.completedButton.selectedSegmentIndex];
    self.toDoItem.priorityNumber = [NSNumber numberWithInteger:self.priority.selectedSegmentIndex ];
    NSError *error = nil;
    if(![self.toDoItem.managedObjectContext save:&error]) {
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)listItemCompleted
{
    if(self.completedButton == 0) {
        self.toDoItem.isCompleted = @1;
        
    }
    else {
        self.toDoItem.isCompleted = @0;
    }
}

-(void)setPriorityLevel
{
    self.priority.selectedSegmentIndex = [self.toDoItem.priorityNumber integerValue] ;
}

@end
