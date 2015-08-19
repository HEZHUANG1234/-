//
//  Tg.m
//  Tuangou
//
//  Created by lanou3g on 15/8/14.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "Tg.h"

@implementation Tg
+ (instancetype)tgWithDict:(NSDictionary *)dict{

    return [[self alloc]initWithDict:dict];


}

-(instancetype)initWithDict:(NSDictionary *)dict{

    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
@end
