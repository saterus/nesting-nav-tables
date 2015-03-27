//
//  Building.h
//  Nesting Nav Tables
//
//  Created by Alex Burkhart on 3/27/15.
//  Copyright (c) 2015 Alex Burkhart. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Site;

@interface Building : NSObject

@property (nonatomic) NSInteger _id;
@property (nonatomic,strong) NSString *name;
@property (nonatomic,weak) Site *site;

+ (NSInteger)nextId;
+ (Building *)randomBuilding;

- (id) initWithName:(NSString *)name withSite:(Site *)site;

@end
