//
//  view2.h
//  navigationModal
//
//  Created by Manu Sharma on 11/9/12.
//  Copyright (c) 2012 Manu Sharma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface view2 : UIViewController
- (id)initWithDismissCallback:(void(^)())callback;
@property (weak, nonatomic) IBOutlet UIButton *dismissButton;
- (IBAction)dismissButtonAction:(id)sender;
- (IBAction)notificationBtn:(id)sender;

@end
