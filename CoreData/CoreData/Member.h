//
//  Member.h
//  CoreData
//
//  Created by 蘇健豪1 on 2014/12/5.
//  Copyright (c) 2014年 蘇健豪. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Member : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * phoneNumber;

@end
