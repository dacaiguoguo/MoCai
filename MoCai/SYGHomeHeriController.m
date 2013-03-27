//
//  SYGHomeHeriController.m
//  MoCai
//
//  Created by Yanguo.sun on 13-3-27.
//  Copyright (c) 2013年 dacaiguoguo. All rights reserved.
//

#import "SYGHomeHeriController.h"

@implementation SYGHomeHeriController
- (id)init{
    self = [super init];
    if (self) {
        self.firstViewController = [[NSClassFromString(ttClass) alloc] initWithNibName:ttClass bundle:nil];
    }
    return self;
}
- (UIView*)view{

    return _firstViewController.view;
}

- (void)dealloc{
    [_firstViewController release];
    [super dealloc];
}
@end
