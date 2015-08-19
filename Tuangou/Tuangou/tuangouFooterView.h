//
//  tuangouFooterView.h
//  Tuangou
//
//  Created by lanou3g on 15/8/14.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol dataMoreDelegate <NSObject>

@optional
-(void)loadingMoreData;

@end

@interface TuangouFooterView : UIView


@property (weak, nonatomic) IBOutlet UIButton *loadBtn;


- (IBAction)didClick:(UIButton *)sender;


@property (weak, nonatomic) IBOutlet UIView *loadView;

@property(nonatomic,weak)id<dataMoreDelegate>delegate;
// 快速创建一个footerView 对象
+(instancetype)footerView;



@end
