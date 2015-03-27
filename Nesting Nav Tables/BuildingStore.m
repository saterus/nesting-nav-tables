//
//  BuildingStore.m
//  Nesting Nav Tables
//
//  Created by Alex Burkhart on 3/27/15.
//  Copyright (c) 2015 Alex Burkhart. All rights reserved.
//

#import "BuildingStore.h"
#import "Building.h"
#import "Site.h"

@implementation BuildingStore

+ (BuildingStore *)sharedStore
{
    static BuildingStore *sharedStore = nil;
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
        buildings = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)buildings
{
    for (Building *b in buildings) {
        NSLog(@"id: %ld, name: %@, site_id: %ld", (long)b._id, b.name, (long)b.site._id);
    }
    return buildings;
}

- (Building *)createBuilding
{
    Building *building = [Building randomBuilding];
    [buildings addObject:building];
    return building;
}

@end
