//
//  SYGConentViewController.m
//  MoCai
//
//  Created by YangBin on 13-3-27.
//  Copyright (c) 2013年 dacaiguoguo. All rights reserved.
//

#import "SYGConentViewController.h"

@interface SYGConentViewController ()

@end

@implementation SYGConentViewController

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
    self.scrollView.contentSize = CGSizeMake(320*3, self.scrollView.frame.size.height);
    CGRect orf =   self.tableView.frame;
    orf.origin.x = 320;
    self.tableView.frame = orf;
    [self.scrollView setContentOffset:CGPointMake(320, 0) animated:NO];
    // Do any additional setup after loading the view from its nib.
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static   NSString *idefi = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:idefi];
    
    if (cell==nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idefi] autorelease];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%d",indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%d",indexPath.row);
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_tableView release];
    [_scrollView release];
    [super dealloc];
}
@end
