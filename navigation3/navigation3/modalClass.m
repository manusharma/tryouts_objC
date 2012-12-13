//
//  modalClass.m
//  navigation3
//
//  Created by Manu Sharma on 11/6/12.
//  Copyright (c) 2012 Manu Sharma. All rights reserved.
//

#import "modalClass.h"
#import "pushView.h"
#import "ViewController.h"

@interface modalClass ()
@property (copy, nonatomic) void (^dismissCallback)();
@end

@implementation modalClass

- (id)initWithDismissCallback:(void(^)())callback
{
    self = [super initWithNibName:@"view2" bundle:nil];
    if (self) {
        self.dismissCallback = callback;
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"modal View Controller";
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)modalDown:(id)sender {
    //ViewController *vc = [[ViewController alloc] init];
    //[self presentModalViewController:vc animated:YES];
    
    self.dismissCallback();
}
@end
