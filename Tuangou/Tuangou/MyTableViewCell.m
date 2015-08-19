//
//  MyTableViewCell.m
//  Tuangou
//
//  Created by lanou3g on 15/8/14.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

-(void)setTgha:(Tg *)tgha{
    _tgha =tgha;
    self.imgView.image =[UIImage imageNamed:tgha.icon];
    self.label1.text =tgha.title;
    self.label2.text =[NSString stringWithFormat:@"￥%@",tgha.price];


}


+(instancetype)cellWithTableView:(UITableView *)tableView{

    static NSString *ID =@"cell";
    MyTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:ID];
    if (cell ==nil) {

        cell =[[[NSBundle mainBundle]loadNibNamed:@"MyTableViewCell" owner:nil options:nil]lastObject];
    }
    return cell;
}


@end
