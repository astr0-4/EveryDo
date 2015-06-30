//
//  MasterViewController.h
//  EveryDo
//
//  Created by Alex on 2015-06-29.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "ToDo.h"

@interface MasterViewController : UIViewController <NSFetchedResultsControllerDelegate, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

