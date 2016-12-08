//
//  BdViewController.h
//  Swift
//
//  Created by rafa on 25/11/16.
//  Copyright © 2016 cris. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface BdViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
{
    IBOutlet UIPickerView *picker;
    AppDelegate *mainDelegate;
    
}

@property(nonatomic, strong) IBOutlet UIPickerView *picker;
@property(nonatomic, strong) AppDelegate *mainDelegate;


@end
