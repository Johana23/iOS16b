//
//  ViewController.m
//  Swift
//
//  Created by rafa on 25/11/16.
//  Copyright © 2016 cris. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize lblPicker, tbName, tbEmail, tbGender, tbAge;

-(IBAction)addPerson:(id)sender
{
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    Data *person = [[Data alloc] initWithData:tbName.text theEmail:tbEmail.text theGender:tbGender.text theAge:tbAge.text];
    BOOL returnCode = [mainDelegate insertIntoDatabase:person];
    
    NSString *returnMsg = @"Added to the Database";
    
    if(returnCode == NO)
        returnMsg = @"Failed to add to the data base";
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Register Complete" message:returnMsg preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
}

-(IBAction)unwindToThisViewController:(UIStoryboardSegue *)sender
{
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:self.view];
    
    CGRect pickerFrame = lblPicker.frame;
    
    if(CGRectContainsPoint(pickerFrame, touchPoint))
    {
        [self performSegueWithIdentifier:@"HomeSegueToPicker" sender:self];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
