//
//  ViewController.h
//  navigationModal
//
//  Created by Manu Sharma on 11/9/12.
//  Copyright (c) 2012 Manu Sharma. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "view2.h"

@interface ViewController : UIViewController
{
    view2 *v2;
}
- (IBAction)presentModal:(id)sender;
- (IBAction)presentModalIpad:(id)sender;

- (IBAction)animateModal:(id)sender;
@end
