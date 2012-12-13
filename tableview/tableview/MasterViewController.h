//
//  MasterViewController.h
//  tableview
//
//  Created by Manu Sharma on 12/10/12.
//  Copyright (c) 2012 Manu Sharma. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
