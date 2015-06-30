//
//  DetailViewController.h
//  EveryDo
//
//  Created by Alex on 2015-06-29.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *completedButton;

@property (strong, nonatomic) ToDo *toDoItem;


@end

