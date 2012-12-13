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
    
    UISwipeGestureRecognizer *swipeRecognizer =[[UISwipeGestureRecognizer alloc]
     initWithTarget:self
     action:@selector(swipeDetected:)];
    swipeRecognizer.direction = UISwipeGestureRecognizerDirectionRight | UISwipeGestureRecognizerDirectionDown;
    //swipeRecognizer.direction = UISwipeGestureRecognizerDirectionDown;
    //[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeDown)];
    
    [self.view addGestureRecognizer:swipeRecognizer];
    
    self.dismissButton.titleLabel.font = [UIFont fontWithName:@"segoe UI" size:14.0];

}

-(IBAction)swipeDetected:(UISwipeGestureRecognizer*)sender{
    // view2 *v = [[view2 alloc] initwithNibName: @"view2" bundle:nil];
    if (sender.direction ==UISwipeGestureRecognizerDirectionDown)
    {
        //_label1.text = @"Down swipe";
        NSLog(@"Down Swipe");
    }
    if (sender.direction ==UISwipeGestureRecognizerDirectionRight)
    {
        NSLog(@"Right Swipe");
        /*
        view2 *v = [[view2 alloc] initWithNibName:@"view2" bundle:nil];
        
        v.view.frame = CGRectMake(0, 0, 320,460);
        //[self addChildViewController:v];
        [self.view addSubview:v.view];
        [UIView animateWithDuration:0.15
                         animations:^{
                             v.view.frame = CGRectMake(200,0,320, 460);
                         }completion:^(BOOL finished) {
                             NSLog(@"right animation complete");
                         }
         ];*/
        
    }
    
    NSLog(@"created");
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setDismissButton:nil];
    [super viewDidUnload];
}

- (IBAction)dismissButtonAction:(id)sender {
    //[self dismissModalViewControllerAnimated:YES];
    self.dismissCallback();
    self.dismissCallback = nil;

}

- (IBAction)notificationBtn:(id)sender {
    //NSAlert(@"abc");
    
    //[[NSNotificationCenter defaultCenter] postNotificationName: @"abc" object: noteObject];
}
@end
