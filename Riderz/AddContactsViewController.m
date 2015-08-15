//
//  AddContactsViewController.m
//  Riderz
//
//  Created by Abner Castro Aguilar on 15/08/15.
//  Copyright (c) 2015 Rodolfo Castillo. All rights reserved.
//

#import "AddContactsViewController.h"

@interface AddContactsViewController ()

@end

@implementation AddContactsViewController
{
    NSArray *arrayPlaca;
    NSMutableArray *arrayContacts;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    arrayPlaca = @[@"Plate number, Ex: A12J"];
    arrayContacts = [[NSMutableArray alloc] init];
    [arrayContacts addObject:@"New contact, Ex: +52556435762"];
    self.tableViewContacts.delegate = self;
    self.tableViewContacts.dataSource = self;
}

#pragma mark Table View Delegates
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch(section)
    {
        case 0:
            return arrayPlaca.count;
            break;
        case 1:
            return arrayContacts.count;
            break;
        default:
            break;
    }
    return 0;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch(section)
    {
        case 0:
            return @"Add your plate securily so it is easy to identify you with other riders.";
            break;
        case 1:
            return @"You can add as many contacts as you want so they can know wheter you have an accident and they can assist you.";
            break;
        default:
            break;
    }
    return nil;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(!cell)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    UITextField *textField = (UITextField *)[cell viewWithTag:1];
    switch(indexPath.section){
        case 0:
            textField.placeholder = [arrayPlaca objectAtIndex:0];
            break;
        case 1:
            textField.placeholder = [arrayContacts objectAtIndex:0];
            break;
        default:
            break;
    }
    return cell;
}

@end



























































































