//
//  RootViewController.m
//  View
//
//  Created by xuyazhong on 15/2/15.
//  Copyright (c) 2015年 xuyazhong. All rights reserved.
//

#import "RootViewController.h"


@interface RootViewController ()
{
}
@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
        self.title = @"测试";
        self.view.backgroundColor = [UIColor orangeColor];
//        MyScrollView *news = [[MyScrollView alloc]initWithFrame:CGRectMake(10, 100, 300, 40)];
//        news.backgroundColor = [UIColor greenColor];
//        [self.view addSubview:news];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"left" style:UIBarButtonItemStyleBordered target:self.viewDeckController action:@selector(toggleLeftView)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"right" style:UIBarButtonItemStyleBordered target:self.viewDeckController action:@selector(toggleRightView)];
    
    
    NSArray *array = [NSArray arrayWithObjects:@"头条",@"娱乐",@"热点",@"体育",@"本地",@"财经",@"科技",@"汽车",@"段子",@"时尚",@"军事",@"历史", nil];

    UIScrollView *newview =[[UIScrollView alloc]init];
    newview.frame =CGRectMake(0, 64, 320, 30);
    newview.showsHorizontalScrollIndicator = NO;
    newview.showsVerticalScrollIndicator = NO;
    newview.bounces = NO;
    newview.userInteractionEnabled = YES;
    newview.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:newview];
    
    
    for(int i =0; i<array.count;i++)
    {
        UIButton *buttonview = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [buttonview setTitle:array[i] forState:UIControlStateNormal];
        buttonview.frame = CGRectMake(40*i, -60, 40, 30);
        buttonview.tag = 100+i;
        [buttonview setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [buttonview addTarget:self action:@selector(btnClickAction:) forControlEvents:UIControlEventTouchUpInside];
        [newview addSubview:buttonview];
        [newview setContentSize:CGSizeMake(40*i,-50)];
    }

    UILabel *leftLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 64, 40, 30)];
    leftLabel.backgroundColor = [UIColor whiteColor];
    leftLabel.alpha = 0.5;
    [self.view addSubview:leftLabel];

    UILabel *leftLeftLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 64, 20, 30)];
    leftLeftLabel.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:leftLeftLabel];
    
    UILabel *rightLabel = [[UILabel alloc]initWithFrame:CGRectMake(280, 64, 20, 30)];
    rightLabel.backgroundColor = [UIColor whiteColor];
    rightLabel.alpha = 0.5;
    [self.view addSubview:rightLabel];
    
    UILabel *rightRightLabel = [[UILabel alloc]initWithFrame:CGRectMake(300, 64, 20, 30)];
    rightRightLabel.backgroundColor = [UIColor whiteColor];
    rightRightLabel.alpha = 1;
    [self.view addSubview:rightRightLabel];
    
    // Do any additional setup after loading the view.
}
-(void)btnClickAction:(UIButton *)btn
{
    NSLog(@"tag:%d",btn.tag);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
