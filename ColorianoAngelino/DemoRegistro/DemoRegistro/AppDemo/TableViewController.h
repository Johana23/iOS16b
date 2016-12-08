//
//  TableViewController.h
//  AppDemo
//
//  Created by user on 21/11/16.
//  Copyright © 2016 cris. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface TableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    AppDelegate *mainDelegate;
}

@property (nonatomic, strong) AppDelegate *mainDelegate;

@end
