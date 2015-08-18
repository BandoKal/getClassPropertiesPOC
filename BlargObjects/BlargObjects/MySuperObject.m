//
//  MySuperObject.m
//  BlargObjects
//
//  Created by Jason Bandy on 8/18/15.
//  Copyright (c) 2015 Asurion LLC. All rights reserved.
//

#import "MySuperObject.h"
#import <objc/runtime.h>


@implementation MySuperObject

- (NSArray *)allPropertyNames
{
    unsigned count;
    NSMutableArray *rv = [NSMutableArray array];
    
    objc_property_t *properties = class_copyPropertyList([self class], &count);
    
    
    unsigned i;
    for (i = 0; i < count; i++)
    {
        objc_property_t property = properties[i];
        NSString *name = [NSString stringWithUTF8String:property_getName(property)];
        [rv addObject:name];
    }
    
    free(properties);
    
    return rv;
}

-(NSArray*)toArray{
    NSMutableArray *returnArray = [[NSMutableArray alloc]initWithArray:[self allPropertyNames]];
    [returnArray addObject:@"mySuperName"];
    return returnArray;
}

@end
