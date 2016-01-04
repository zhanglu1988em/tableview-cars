//
//  Car.h
//  05-uitablevew-汽车之家
//
//  Created by zhanglu1988em on 16/1/4.
//  Copyright © 2016年 wbder. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* icon;

-(instancetype) initWithDict: (NSDictionary*) dict;
+(instancetype) carWithDict:(NSDictionary*) dict;



@end
