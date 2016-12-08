//
//  ViewController.h
//  Swift
//
//  Created by rafa on 25/11/16.
//  Copyright © 2016 cris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UILabel *lblPicker;
    
    IBOutlet UITextField *tbName;
    IBOutlet UITextField *tbEmail;
    IBOutlet UITextField *tbGender;
    IBOutlet UITextField *tbAge;
    
}
@property (nonatomic, strong) IBOutlet UILabel *lblPicker;

@property (nonatomic, strong) IBOutlet UITextField *tbName;
@property (nonatomic, strong) IBOutlet UITextField *tbEmail;
@property (nonatomic, strong) IBOutlet UITextField *tbGender;
@property (nonatomic, strong) IBOutlet UITextField *tbAge;


@end

