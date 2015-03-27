//
//  MasterViewController.m
//  Nesting Nav Tables
//
//  Created by Alex Burkhart on 3/26/15.
//  Copyright (c) 2015 Alex Burkhart. All rights reserved.
//

#import "SiteViewController.h"
#import "BuildingViewController.h"
#import "SiteStore.h"
#import "Site.h"

@interface SiteViewController ()

@property NSArray *sites;

@end

@implementation SiteViewController

- (void)awakeFromNib {
    [super awakeFromNib];
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        self.clearsSelectionOnViewWillAppear = NO;
        self.preferredContentSize = CGSizeMake(320.0, 600.0);
    }

    for (int i = 0; i < 5; i++) {
        [[SiteStore sharedStore] createSite];
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    self.sites = [[SiteStore sharedStore] sites];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSString *siteToBuildingIdentifier = @"siteToBuilding";
    if ([[segue identifier] isEqualToString:siteToBuildingIdentifier]) {
        BuildingViewController *controller = (BuildingViewController *) [[segue destinationViewController] topViewController];
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        Site *site = self.sites[indexPath.row];
        controller.site = site;
        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
        controller.navigationItem.leftItemsSupplementBackButton = YES;
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.sites.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    Site *site = self.sites[indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld: %@", (long) site._id, site.name];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return NO;
}


@end
