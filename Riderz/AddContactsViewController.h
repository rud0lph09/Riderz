//
//  AddContactsViewController.h
//  Riderz
//
//  Created by Abner Castro Aguilar on 15/08/15.
//  Copyright (c) 2015 Rodolfo Castillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddContactsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableViewContacts;
@end
