//
//  CarGroup.m
//  05-uitablevew-汽车之家
//
//  Created by zhanglu1988em on 16/1/4.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import "CarGroup.h"

@implementation CarGroup

-(instancetype) initWithDict: (NSDictionary*) dict
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+(instancetype) carGroupWithDict:(NSDictionary*) dict
{
    return [[self alloc] initWithDict:dict];
}

+(NSArray*)carGroups
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"cars_total" ofType:@"plist"];
    NSArray *arry = [[NSArray alloc] initWithContentsOfFile:path];
    NSMutableArray *arryM = [NSMutableArray array];
    for (NSDictionary *dict in arry) {
        [arryM addObject:[self carGroupWithDict:dict]];
    }
    return arryM;
}

@end
