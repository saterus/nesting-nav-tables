//
//  Site.h
//  Nesting Nav Tables
//
//  Created by Alex Burkhart on 3/27/15.
//  Copyright (c) 2015 Alex Burkhart. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Site : NSObject

@property (nonatomic) NSInteger _id;
@property (nonatomic,strong) NSString *name;

+ (NSInteger)nextId;
+ (Site *)randomSite;

- (id)initWithName:(NSString *)name;

@end
