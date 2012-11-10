//
//  ViewController.m
//  navigationModal
//
//  Created by Manu Sharma on 11/9/12.
//  Copyright (c) 2012 Manu Sharma. All rights reserved.
//

#import "ViewController.h"
#import "view2.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)presentModal:(id)sender {
    view2 *v = [[view2 alloc] init];
    //[self presentedViewController:v animated:YES];

    [self presentModalViewController:self->v2 animated:YES];
}

- (IBAction)presentModalIpad:(id)sender {
    
}

- (IBAction)animateModal:(id)sender {
    __block view2 *kim = [[view2 alloc] initWithDismissCallback:^ {
        [UIView animateWithDuration:0.3
                         animations:^{
                             kim.view.frame = CGRectMake(0, self.view.frame.size.height, kim.view.frame.size.width, kim.view.frame.size.height);
                         }completion:^(BOOL finished) {
                             if (finished) {
                                 [kim removeFromParentViewController];
                             }
                         }];
    }];
    
    kim.view.frame = CGRectMake(0, self.view.frame.size.height, kim.view.frame.size.width, kim.view.frame.size.height);
    [self.view addSubview:kim.view];
    [self addChildViewController:kim];
    
    [UIView animateWithDuration:0.3
                     animations:^{
                         kim.view.frame = CGRectMake(0, 0, kim.view.frame.size.width, kim.view.frame.size.height);
                     }completion:^(BOOL finished) {
                     }];

}
@end
