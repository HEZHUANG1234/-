//
//  Tg.h
//  Tuangou
//
//  Created by lanou3g on 15/8/14.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tg : NSObject
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *price;
@property(nonatomic,copy)NSString *buyCount;
@property(nonatomic,copy)NSString *icon;


+ (instancetype)tgWithDict:(NSDictionary *)dict;

-(instancetype)initWithDict:(NSDictionary *)dict;


@end
