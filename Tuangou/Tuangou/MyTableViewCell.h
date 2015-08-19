//
//  MyTableViewCell.h
//  Tuangou
//
//  Created by lanou3g on 15/8/14.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tg.h"
@interface MyTableViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@property (weak, nonatomic) IBOutlet UILabel *label1;

@property (weak, nonatomic) IBOutlet UILabel *label2;

@property(nonatomic,strong)Tg  * tgha;


+(instancetype)cellWithTableView:(UITableView *)tableView;






@end
