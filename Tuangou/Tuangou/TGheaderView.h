//
//  TGheaderView.h
//  Tuangou
//
//  Created by lanou3g on 15/8/14.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TGheaderView : UIView
@property (weak, nonatomic) IBOutlet UIScrollView *ScrollView;

@property (weak, nonatomic) IBOutlet UIPageControl *pagecontrol;


@property (weak, nonatomic) IBOutlet UIView *views;



+(instancetype)headerView;
-(void)createViews;


@end
