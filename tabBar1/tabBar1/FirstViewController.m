//
//  FirstViewController.m
//  tabBar1
//
//  Created by Manu Sharma on 11/29/12.
//  Copyright (c) 2012 Manu Sharma. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
    //self.screenHeight.text = [UIScreen mainScreen].bounds.size.height;;
    CGFloat mainScreenHeight = [UIScreen mainScreen].bounds.size.height;
    self.screenHeight.text = [NSString stringWithFormat:@"%f", mainScreenHeight];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setScreenHeight:nil];
    [super viewDidUnload];
}
@end
