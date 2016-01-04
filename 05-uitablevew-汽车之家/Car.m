//
//  Car.m
//  05-uitablevew-汽车之家
//
//  Created by zhanglu1988em on 16/1/4.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import "Car.h"

@implementation Car

-(instancetype) initWithDict: (NSDictionary*) dict
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+(instancetype) carWithDict:(NSDictionary*) dict
{
    return [[self alloc] initWithDict:dict];
}

@end
