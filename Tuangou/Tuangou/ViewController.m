//
//  ViewController.m
//  Tuangou
//
//  Created by lanou3g on 15/8/14.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "ViewController.h"
#import "Tg.h"
#import "MyTableViewCell.h"
#import "TuangouFooterView.h"
#import "TGheaderView.h"



@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)NSMutableArray *tgs;
@property(nonatomic,strong)Tg *tg;
@property (strong, nonatomic) IBOutlet UITableView *tableView;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = 140;
//    for (int i=0; i<5; i++) {
//        UIImageView *imageView =[[UIImageView alloc]init];
//        CGFloat imageW = self.scrollView.frame.size.width;
//        
//        CGFloat imageH =  self.scrollView.frame.size.height;
//        CGFloat imageY =0;
//        CGFloat imageX =i*imageW;
//        imageView.frame=CGRectMake(imageX, imageY, imageW , imageH);
//    }
    
    
    
    
    
    
    
    
    
    
    
//    //设置tabelView尾部显示的控件  只有高度才有效果,如果要设置宽度,可以把button添加到view上,把View添加到footerView上
//    UIButton *footerBtn =[UIButton buttonWithType:UIButtonTypeSystem];
//    footerBtn.frame=CGRectMake(0, 0,0,40);
//    footerBtn.backgroundColor=[UIColor orangeColor];
//    [footerBtn setTitle:@"加载更多团购" forState:UIControlStateHighlighted];
// //   UIView *view =[[UIView alloc]initWithFrame:CGRectMake(0, 0, 300, 40)];
    
    TuangouFooterView *footer =[TuangouFooterView footerView];
    footer.delegate =self;
    self.tableView.tableFooterView=footer;

//    //创建nib
//    UINib *nib =[UINib nibWithNibName:@"tuangouFooterView" bundle:nil];
//    //加载xib
//  UIView  *view1 = [[nib instantiateWithOwner:nil options:nil]lastObject];
//    
//    [view1 viewWithTag:10];
//    
//    self.tableView.tableFooterView=view1;
//    [TGheaderView createViews];
    self.tableView.tableHeaderView =[TGheaderView headerView];
    
    
}

-(void)loadingMoreData{

    Tg *gt =[[Tg alloc]init];
    gt.icon=@"37e4761e6ecf56a2d78685df7157f097.png";
    gt.title=@"新增加的团购数据...";
    gt.price=@"141";
    gt.buyCount=@"241";
    [self.tgs addObject:gt];
    
    // 刷新数据
    [self.tableView reloadData];
    
    

}


-(BOOL)prefersStatusBarHidden{
   
    return YES;
}


-(NSArray *)tgs{
    if (!_tgs) {
  //1. 初始化plist的全路径
        NSString *path =[[NSBundle mainBundle]pathForResource:@"tgs.plist" ofType:nil];
 //2.加载数组
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
 //3.将dicArray里面的所有字典转成模型对象,放到新的数组中
        NSMutableArray *tgArray =[NSMutableArray array];
        for (NSDictionary *dict in dictArray) {
            //3.1创建模型对象
            Tg *tg =[Tg tgWithDict:dict];
            //3.2 添加模型对象到数组中
            [tgArray addObject:tg];
        }
        //赋值
        _tgs =tgArray;
    }
    return _tgs;

}




-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return self.tgs.count;


}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  
    MyTableViewCell *cell=[MyTableViewCell cellWithTableView:tableView];
    Tg *tg =self.tgs[indexPath.row];
    cell.tgha =tg;

    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return 140;


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
