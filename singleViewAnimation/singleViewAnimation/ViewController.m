//
//  ViewController.m
//  singleViewAnimation
//
//  Created by Manu Sharma on 12/18/12.
//  Copyright (c) 2012 Manu Sharma. All rights reserved.
//

#import "ViewController.h"
#import "SideViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UISwipeGestureRecognizer *rightRecognizer;
    rightRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
    [rightRecognizer setDirection: UISwipeGestureRecognizerDirectionRight];
    [[self view] addGestureRecognizer:rightRecognizer];
}

-(void)handleSwipeFrom:(UISwipeGestureRecognizer *)recognizer {
    NSLog(@"get gesture");
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    
    {
        NSLog(@"get gesture right");
        [self animate];
    }
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft) {
        NSLog(@"get gesture Left");
               
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
static int a=0;
- (IBAction)btnAnimate:(id)sender {
    [self animate];
   }

-(void) animate{
    
    __block SideViewController *kim = [[SideViewController alloc] initWithDismissCallback:^ {
        [UIView animateWithDuration:0.1
                         animations:^{
                             kim.view.frame = CGRectMake(0, 0, 0, self.view.frame.size.height);
                             self.mainView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
                         }completion:^(BOOL finished) {
                             if (finished) {
                                 [kim removeFromParentViewController];
                                 NSLog(@"Animated Back in");
                                 a=0;
                             }
                         }];
    }];
    
    
    
    kim.view.frame = CGRectMake(0, 0, 0, self.view.frame.size.height);
    //modalON = 1;
    
    [self.view addSubview:kim.view];
    [self addChildViewController:kim];
    
    [UIView animateWithDuration:0.3
                     animations:^{
                         kim.view.frame = CGRectMake(0, 0, self.view.frame.size.width/2, self.view.frame.size.height);
                         self.mainView.frame = CGRectMake(self.view.frame.size.width/2, 0, self.view.frame.size.width/2, self.view.frame.size.height);
                     }completion:^(BOOL finished) {
                         NSLog(@"Animated out");
                         a=1;
                     }];
    

}
@end
