//
//  SYGFirstViewController.m
//  MoCai
//
//  Created by YangBin on 13-3-27.
//  Copyright (c) 2013年 dacaiguoguo. All rights reserved.
//

#import "SYGFirstViewController.h"

@interface SYGFirstViewController ()

@end

@implementation SYGFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Home";

    self.iC = [[[SYGHomeHeriController alloc] init] autorelease];
    [self.view addSubview:_iC.view];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
