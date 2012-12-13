//
//  imageVC.m
//  navigationModal
//
//  Created by Manu Sharma on 11/14/12.
//  Copyright (c) 2012 Manu Sharma. All rights reserved.
//

#import "imageVC.h"

@interface imageVC ()

@end

@implementation imageVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSData * imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: @"http://manusharma.me/images/015-4.jpg"]];
    //cell.image = [UIImage imageWithData: imageData];
    self.img.image = [UIImage imageWithData:imageData];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setImg:nil];
    [super viewDidUnload];
}
@end
