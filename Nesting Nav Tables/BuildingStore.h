//
//  BuildingStore.h
//  Nesting Nav Tables
//
//  Created by Alex Burkhart on 3/27/15.
//  Copyright (c) 2015 Alex Burkhart. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Building;

@interface BuildingStore : NSObject

{
    NSMutableArray *buildings;
}

+ (BuildingStore *)sharedStore;

- (NSArray *)buildings;
- (Building *)createBuilding;

@end
