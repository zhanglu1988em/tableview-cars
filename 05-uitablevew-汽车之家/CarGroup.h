//
//  CarGroup.h
//  05-uitablevew-汽车之家
//
//  Created by zhanglu1988em on 16/1/4.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarGroup : NSObject
@property (nonatomic,strong) NSArray*  cars;
@property (nonatomic,copy) NSString* title;


-(instancetype) initWithDict: (NSDictionary*) dict;
+(instancetype) carGroupWithDict:(NSDictionary*) dict;
+(NSArray*) carGroups;
@end
