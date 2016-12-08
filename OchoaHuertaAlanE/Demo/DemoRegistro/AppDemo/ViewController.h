//
//  ViewController.h
//  AppDemo
//
//  Created by user on 21/11/16.
//  Copyright © 2016 cris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController < UITextFieldDelegate> {
    
    IBOutlet UILabel *lblTable;
    
    IBOutlet UITextField *tbName;
    IBOutlet UITextField *tbApellido;
    IBOutlet UITextField *tbEmail;
    IBOutlet UITextField *tbGender;
    IBOutlet UITextField *tbIp;
    
    
}

@property (nonatomic, strong) IBOutlet UILabel *lblTable;

@property (nonatomic, strong) IBOutlet UITextField *tbName;
@property (nonatomic, strong) IBOutlet UITextField *tbApellido;
@property (nonatomic, strong) IBOutlet UITextField *tbEmail;
@property (nonatomic, strong) IBOutlet UITextField *tbGender;
@property (nonatomic, strong) IBOutlet UITextField *tbIp;


@end

