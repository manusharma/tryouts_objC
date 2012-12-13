//
//  ViewController.m
//  navigationModal
//
//  Created by Manu Sharma on 11/9/12.
//  Copyright (c) 2012 Manu Sharma. All rights reserved.
//

#import "ViewController.h"
#import "view2.h"
#import "imageVC.h"

@interface ViewController (){
}
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
    [self presentModalViewController:v animated:YES];

    //[self presentModalViewController:self->v2 animated:YES];
}

- (IBAction)presentModalIpad:(id)sender {
    
}

int modalON = 0;
- (IBAction)dismissModalAction:(id)sender {
    view2 *v2 = [[view2 alloc] init];
    [UIView animateWithDuration:0.3 animations:^{
        v2.view.frame = CGRectMake(self.view.frame.size.width/2 - v2.view.frame.size.width/2, 0, v2.view.frame.size.width, v2.view.frame.size.height);
    }];
}

- (IBAction)openSafari:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://www.stackoverflow.com"];
    
    if (![[UIApplication sharedApplication] openURL:url])
        
        NSLog(@"%@%@",@"Failed to open url:",[url description]);
}

- (IBAction)imageViewLoad:(id)sender {
    
    // If we delete above block, and allocate memory for view2 frame, it'll do the same thing.
    // Above block is only dismiss callback
    imageVC *kim = [[imageVC alloc] init];
    
    kim.view.frame = CGRectMake(self.view.frame.size.width/2 - kim.view.frame.size.width/2, self.view.frame.size.height, kim.view.frame.size.width-50, kim.view.frame.size.height-50);
    modalON = 1;
    
    [self.view addSubview:kim.view];
    [self addChildViewController:kim];
    
    [UIView animateWithDuration:0.3
                     animations:^{
                         kim.view.frame = CGRectMake(self.view.frame.size.width/2 - kim.view.frame.size.width/2, 0, kim.view.frame.size.width-20, kim.view.frame.size.height-20);
                     }completion:^(BOOL finished) {
                         
                     }];


}

- (IBAction)animateModal:(id)sender {
    //view2 *kim = [[view2 alloc] init];
    
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

    
    
    kim.view.frame = CGRectMake(self.view.frame.size.width/2 - kim.view.frame.size.width/2, self.view.frame.size.height, kim.view.frame.size.width-50, kim.view.frame.size.height-50);
    modalON = 1;
    
    [self.view addSubview:kim.view];
    [self addChildViewController:kim];
    
    [UIView animateWithDuration:0.3
                     animations:^{
                         kim.view.frame = CGRectMake(self.view.frame.size.width/2 - kim.view.frame.size.width/2, 0, kim.view.frame.size.width-20, kim.view.frame.size.height-20);
                     }completion:^(BOOL finished) {
                         
                     }];
    

    
  }
- (void)viewDidUnload {
    [self setDismissModal:nil];
    [self setImageView:nil];
    [super viewDidUnload];
}
@end
