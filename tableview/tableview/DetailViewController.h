//
//  DetailViewController.h
//  tableview
//
//  Created by Manu Sharma on 12/10/12.
//  Copyright (c) 2012 Manu Sharma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
