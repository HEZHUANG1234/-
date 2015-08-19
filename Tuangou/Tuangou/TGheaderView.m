//
//  TGheaderView.m
//  Tuangou
//
//  Created by lanou3g on 15/8/14.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "TGheaderView.h"
#import <UIKit/UIKit.h>
@implementation TGheaderView


+(instancetype)headerView{
    return [[[NSBundle mainBundle]loadNibNamed:@"HeaderView" owner:nil options:nil]lastObject];
}

//-(instancetype)init
//{
//    self = [super init];
//    if (self) {
//        self = [[TGheaderView alloc]init];
//        [self createViews];
//    }
//    return self;
//}


-(void)awakeFromNib
{
    NSLog(@"+++");
    int imageCount =5;
    CGFloat imageW =self.ScrollView.frame.size.width;
    CGFloat imageH =self.ScrollView.frame.size.height;
    CGFloat imageY = 0;
    for ( int i = 0; i<imageCount; i++) {
        UIImageView *imageView=[[UIImageView alloc]init];
        imageView.backgroundColor =[UIColor redColor];
        //设置frame
        CGFloat imageX =i*imageW;
        imageView.frame =CGRectMake(imageX, imageY, imageW, imageH);
        //设置图片
        NSString *name =[NSString stringWithFormat:@"%d",i+1];
        imageView.image=[UIImage imageNamed:name];
        [self.ScrollView addSubview:self.views];
        [self.views addSubview:imageView];

        
    }

}



@end
