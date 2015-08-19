//
//  tuangouFooterView.m
//  Tuangou
//
//  Created by lanou3g on 15/8/14.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "TuangouFooterView.h"
#import "ViewController.h"


@implementation TuangouFooterView


+(instancetype)footerView{
    return [[[NSBundle mainBundle] loadNibNamed:@"tuangouFooterView" owner:nil options:nil]lastObject];
}


- (IBAction)didClick:(UIButton *)sender {
    
    // 1. 隐藏加载按钮
    self. loadBtn.hidden = YES;
    //2 显示正在加载
    self.loadView.hidden =NO;
   // 3.显示更多数据
    //3. 添加更多的模型
    //3.1 添加更多的模型数据
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
       
        [self.delegate loadingMoreData];
        self.loadBtn.hidden =NO;
        self.loadView.hidden =YES;
        
    });   
}
@end
