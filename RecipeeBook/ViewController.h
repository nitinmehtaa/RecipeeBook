//
//  ViewController.h
//  RecipeeBook
//
//  Created by apple on 02/02/17.
//  Copyright © 2017 nitin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end

