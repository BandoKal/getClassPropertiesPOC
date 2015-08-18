//
//  MySuperObject.h
//  BlargObjects
//
//  Created by Jason Bandy on 8/18/15.
//  Copyright (c) 2015 Asurion LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MySuperObject : NSObject

@property (nonatomic, strong)NSString *mySuperName;

- (NSArray *)allPropertyNames;
- (NSArray*)toArray;
@end
