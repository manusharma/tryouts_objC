//
//  SideViewController.h
//  singleViewAnimation
//
//  Created by Manu Sharma on 12/18/12.
//  Copyright (c) 2012 Manu Sharma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SideViewController : UIViewController
- (IBAction)swipeGesture:(id)sender;

- (id)initWithDismissCallback: (void(^)())callback;
@end
