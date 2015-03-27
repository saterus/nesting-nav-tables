//
//  DetailViewController.h
//  Nesting Nav Tables
//
//  Created by Alex Burkhart on 3/26/15.
//  Copyright (c) 2015 Alex Burkhart. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AssetTableViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

