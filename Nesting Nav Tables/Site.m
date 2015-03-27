//
//  Site.m
//  Nesting Nav Tables
//
//  Created by Alex Burkhart on 3/27/15.
//  Copyright (c) 2015 Alex Burkhart. All rights reserved.
//

#import "Site.h"

@implementation Site

+ (NSInteger)nextId
{
    static NSInteger currentId = 0;
    return currentId++;
}

+ (Site *)randomSite
{
    return [[Site alloc] initWithName:@"Random Site Name!"];
}

- (id)initWithName:(NSString *)name
{
    self = [super init];
    
    if(self) {
        self._id = [Site nextId];
        self.name = name;
    }
    return self;
}

@end
