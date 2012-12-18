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

- (IBAction)swipeGesture:(id)sender {
    NSLog(@"Left Gesture");
    self.dismissCallback();
    self.dismissCallback = nil;
    

}

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
    UISwipeGestureRecognizer *leftRecognizer;
    leftRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
    [leftRecognizer setDirection: UISwipeGestureRecognizerDirectionLeft];
    [[self view] addGestureRecognizer:leftRecognizer];
    }

-(void)handleSwipeFrom:(UISwipeGestureRecognizer *)recognizer {
    NSLog(@"get gesture");
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight) {
        NSLog(@"get gesture right");
    }
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft) {
        NSLog(@"get gesture Left");
        self.dismissCallback();
        self.dismissCallback = nil;

    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) dismissMe{
    self.dismissCallback();
    self.dismissCallback = nil;

}

@end
