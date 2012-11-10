//
//  view2.m
//  navigationModal
//
//  Created by Manu Sharma on 11/9/12.
//  Copyright (c) 2012 Manu Sharma. All rights reserved.
//

#import "view2.h"

@interface view2 ()
@property (copy, nonatomic) void (^dismissCallback)();
@end

@implementation view2

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
