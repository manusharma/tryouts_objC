//
//  SideViewController.m
//  singleViewAnimation
//
//  Created by Manu Sharma on 12/18/12.
//  Copyright (c) 2012 Manu Sharma. All rights reserved.
//

#import "SideViewController.h"

@interface SideViewController ()
@property (copy, nonatomic) void (^dismissCallback)();
@end

@implementation SideViewController

- (id)initWithDismissCallback: (void(^)())callback
{
    self = [super initWithNibName:@"SideViewController" bundle:nil];
    if (self) {
 
        self.dismissCallback = callback;
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
