//
//  ViewController.m
//  gc+push
//
//  Created by Manu Sharma on 11/16/12.
//  Copyright (c) 2012 Manu Sharma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    //NSOperationQueue *mainQueue = [NSOperationQueue mainQueue];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendPush:(id)sender {
    NSDictionary *d = [NSDictionary dictionaryWithObject:@"Missing Artwork" forKey:macro1];
    [[NSNotificationCenter defaultCenter] postNotificationName:macro1 object:nil userInfo:d];
    NSLog(@"Sent notification %@ to %@", macro1, d);
}

- (IBAction)quitApp:(id)sender {
    //exit(0);

}
@end
