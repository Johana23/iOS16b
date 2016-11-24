//
//  TableViewController.m
//  AppDemo
//
//  Created by user on 21/11/16.
//  Copyright © 2016 cris. All rights reserved.
//

#import "TableViewController.h"
#import "SiteCell.h"
#import "Data.h"

@implementation TableViewController

@synthesize mainDelegate;

//metodos de la tabla
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [mainDelegate.people count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
        NSString *cellIdentifier = @"Cell";
    
    SiteCell *cell = (SiteCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil)
    {
        cell = [[SiteCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    NSInteger row = indexPath.row;
    Data *d = [mainDelegate.people objectAtIndex:row];
    cell.primerLabel.text = d.name;
    cell.segundoLabel.text = d.apellido;
    cell.terceroLabel.text = d.email;
    cell.cuartoLabel.text = d.gender;
    cell.quintoLabel.text = d.ip;
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger row = indexPath.row;
    
    Data *person = [mainDelegate.people objectAtIndex:row];
    
    NSString *title = person.email;
    NSString *msg = person.gender;
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:msg preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:ok];
    
    [self presentViewController:alert animated:YES completion:nil];
    
}

-(void)viewDidLoad {
    [super viewDidLoad];
    self.mainDelegate = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    [mainDelegate readDataFromDatabase];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
