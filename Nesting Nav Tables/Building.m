//
//  Building.m
//  Nesting Nav Tables
//
//  Created by Alex Burkhart on 3/27/15.
//  Copyright (c) 2015 Alex Burkhart. All rights reserved.
//

#import "Building.h"
#import "SiteStore.h"
#import "Site.h"

@implementation Building

+ (NSInteger)nextId
{
    static NSInteger currentId = 0;
    return currentId++;
}

+ (Building *)randomBuilding
{
    Site *randSite = [[SiteStore sharedStore] sites][random() % 5];
    return [[Building alloc] initWithName:@"Random Building Name!" withSite:randSite];
}

- (id)initWithName:(NSString *)name withSite:(Site *)site
{
    self = [super init];
    
    if(self) {
        self._id = [Building nextId];
        self.site = site;
        self.name = name;
    }
    return self;
}

@end
