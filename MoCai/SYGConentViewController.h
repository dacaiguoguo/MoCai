//
//  SYGConentViewController.h
//  MoCai
//
//  Created by YangBin on 13-3-27.
//  Copyright (c) 2013年 dacaiguoguo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SYGConentViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (retain, nonatomic) IBOutlet UITableView *tableView;

@property (retain, nonatomic) IBOutlet UIScrollView *scrollView;
@end
