//
//  ViewController.m
//  navigation3
//
//  Created by Manu Sharma on 11/6/12.
//  Copyright (c) 2012 Manu Sharma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.title = @"ViewController";
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 400, 44)];
    label.backgroundColor = [UIColor clearColor];
    //label.font = [UIFont boldSystemFontOfSize:20.0];
    label.font = [UIFont fontWithName:@"Lato" size:20.0];
    //label.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.5];
    //label.textAlignment = UITextAlignmentCenter;
    label.textColor =[UIColor whiteColor];
    label.text=self.title;
    self.navigationItem.titleView = label;
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0,0,100,30)];
    btn.titleLabel.textColor = [UIColor whiteColor];
    //self.navigationItem.backBarButtonItem = btn;
    [self.modalButton.titleLabel setTextColor:[UIColor blackColor]];
    [self.modalButton.titleLabel setFont:[UIFont fontWithName:@"Lato" size:14]];
    CGFloat scale = [UIScreen mainScreen].scale;
    //NSlog(@"%@", scale);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)modalButton:(id)sender {
}
- (void)viewDidUnload {
    [self setModalButton:nil];
    [super viewDidUnload];
}
@end
