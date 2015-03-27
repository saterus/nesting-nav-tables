//
//  SiteStore.m
//  Nesting Nav Tables
//
//  Created by Alex Burkhart on 3/27/15.
//  Copyright (c) 2015 Alex Burkhart. All rights reserved.
//

#import "SiteStore.h"
#import "Site.h"

@implementation SiteStore


+ (SiteStore *)sharedStore
{
    static SiteStore *sharedStore = nil;
    if(!sharedStore) {
        sharedStore = [[super allocWithZone:nil] init];
    }
    return sharedStore;
}

+ (id)allocWithZone:(struct _NSZone *)zone
{
    return [self sharedStore];
}

- (id)init
{
    self = [super init];
    if (self) {
        sites = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)sites
{
    return sites;
}

- (Site *)createSite
{
    Site *site = [Site randomSite];
    [sites addObject:site];
    return site;
}


@end