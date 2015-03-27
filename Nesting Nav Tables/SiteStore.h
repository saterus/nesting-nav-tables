//
//  SiteStore.h
//  Nesting Nav Tables
//
//  Created by Alex Burkhart on 3/27/15.
//  Copyright (c) 2015 Alex Burkhart. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Site;

@interface SiteStore : NSObject
{
    NSMutableArray *sites;
}

+ (SiteStore *)sharedStore;

- (NSArray *)sites;
- (Site *)createSite;

@end
