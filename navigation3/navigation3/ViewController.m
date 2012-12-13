//
//  ViewController.m
//  navigation3
//
//  Created by Manu Sharma on 11/6/12.
//  Copyright (c) 2012 Manu Sharma. All rights reserved.
//

#import "ViewController.h"
#import "modalClass.h"
#import "pushView.h"
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
    UIImage *navImage = [UIImage imageNamed:@"navBar.png"];
    [self.navigationController.navigationBar setBackgroundImage:navImage forBarMetrics:UIBarMetricsDefault];
    UIBarButtonItem *plus = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(pushNewController)];
        [self.navigationItem setRightBarButtonItem:plus];
}


-(void) pushNewController{
    ViewController *cv = [[ViewController alloc] init];
    modalClass *mc = [[modalClass alloc] initWithNibName:@"modalClass" bundle:nil];
    //for(int i=0; i<=)
    [self setModalPresentationStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentModalViewController:mc animated:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)modalButton:(id)sender {
    //[self pushNewController];
    pushView *pv = [[pushView alloc] init];
    modalClass *mc = [[modalClass alloc] init];
    ViewController *vc = [[ViewController alloc] init];
    NSArray *navArray = [[NSArray alloc] initWithObjects:vc, mc, nil];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:vc];
    [navController setViewControllers:navArray];
    [self presentModalViewController:navController animated:YES];
}
- (void)viewDidUnload {
    [self setModalButton:nil];
    [super viewDidUnload];
}
- (IBAction)pushController:(id)sender {
    pushView *pv = [[pushView alloc] initWithNibName:@"pushView" bundle:nil];
    [self.navigationController pushViewController:pv animated:YES];
}

- (IBAction)newModal:(id)sender {
    modalClass *mc = [[modalClass alloc] initWithNibName:@"modalClass" bundle:nil];
    mc.view.frame = CGRectMake(self.view.frame.size.width/2 - mc.view.frame.size.width/2, self.view.frame.size.height, mc.view.frame.size.width-50, mc.view.frame.size.height-50);
    
    
    [self.view addSubview:mc.view];
    [self addChildViewController:mc];
    
    [UIView animateWithDuration:0.3
                     animations:^{
                         mc.view.frame = CGRectMake(self.view.frame.size.width/2 - mc.view.frame.size.width/2, 0, mc.view.frame.size.width-20, mc.view.frame.size.height-20);
                     }completion:^(BOOL finished) {
                         
                     }];
    

}
@end
