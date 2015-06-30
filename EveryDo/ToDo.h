//
//  ToDo.h
//  
//
//  Created by Alex on 2015-06-29.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface ToDo : NSManagedObject

@property (nonatomic, retain) NSString * itemTitle;
@property (nonatomic, retain) NSString * itemDescription;
@property (nonatomic, retain) NSNumber * priorityNumber;
@property (nonatomic, retain) NSNumber * isCompleted;

@end
